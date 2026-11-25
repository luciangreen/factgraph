% factgraph: a graph of facts with inference. Facts are f(Subject, Relation, Object). Relations can
% be declared transitive (part_of) or symmetric (knows); closure/2 adds everything that follows,
% and why/3 gives the chain of stated facts behind a derived one.
%?- closure([f(wheel, part_of, car), f(car, part_of, fleet)], C).
%   C = [f(car, part_of, fleet), f(wheel, part_of, car), f(wheel, part_of, fleet)]
%?- why([f(a, knows, b)], f(b, knows, a), W).   % W = [f(a, knows, b)]
:- module(factgraph, [closure/2, step/2, why/3, holds/2, closure/3, step/3, why/4, holds/3]).
:- use_module(library(lists)).
:- use_module(library(apply)).

% Relations are declared as rels(TransitiveRelations, SymmetricRelations). The /2 and /3
% forms use the default declaration, part_of transitive and knows symmetric; the /3 and /4
% forms take a declaration, so any relation can be made transitive or symmetric.
default_rels(rels([part_of], [knows])).
transitive(rels(T, _), R) :- memberchk(R, T).
symmetric(rels(_, S), R) :- memberchk(R, S).

step(Fs, New) :- default_rels(D), step(D, Fs, New).
step(D, Fs, New) :- findall(F, ( derive(D, Fs, F), \+ memberchk(F, Fs) ), N0), sort(N0, New).
derive(D, Fs, f(A, R, C)) :- member(f(A, R, B), Fs), transitive(D, R), member(f(B, R, C), Fs).
derive(D, Fs, f(B, R, A)) :- member(f(A, R, B), Fs), symmetric(D, R).

closure(Fs, C) :- default_rels(D), closure(D, Fs, C).
closure(D, Fs, C) :- sort(Fs, S), step(D, S, New), ( New == [] -> C = S ; append(S, New, S2), closure(D, S2, C) ).
holds(Fs, F) :- default_rels(D), holds(D, Fs, F).
holds(D, Fs, F) :- closure(D, Fs, C), memberchk(F, C).

% why(+Facts, +Fact, -Stated): stated facts that derive Fact, found by a search that never reuses a fact.
why(Fs, F, W) :- default_rels(D), why(D, Fs, F, W).
why(_, Fs, F, [F]) :- memberchk(F, Fs), !.
why(D, Fs, F, W) :- why_(D, Fs, F, [F], W0), !, sort(W0, W).
why_(_, Fs, F, _, [F]) :- memberchk(F, Fs).
why_(D, Fs, f(A, R, C), Seen, W) :- transitive(D, R), closure(D, Fs, Cl), member(f(A, R, B), Cl), B \== A, B \== C, \+ memberchk(f(A, R, B), Seen), \+ memberchk(f(B, R, C), Seen), memberchk(f(B, R, C), Cl), why_(D, Fs, f(A, R, B), [f(A, R, B)|Seen], W1), why_(D, Fs, f(B, R, C), [f(B, R, C)|Seen], W2), append(W1, W2, W).
why_(D, Fs, f(B, R, A), Seen, W) :- symmetric(D, R), \+ memberchk(f(A, R, B), Seen), why_(D, Fs, f(A, R, B), [f(A, R, B)|Seen], W).
