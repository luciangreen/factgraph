% factgraph: a graph of facts with inference. Facts are f(Subject, Relation, Object). Relations can
% be declared transitive (part_of) or symmetric (knows); closure/2 adds everything that follows,
% and why/3 gives the chain of stated facts behind a derived one.
%?- closure([f(wheel, part_of, car), f(car, part_of, fleet)], C).
%   C = [f(car, part_of, fleet), f(wheel, part_of, car), f(wheel, part_of, fleet)]
%?- why([f(a, knows, b)], f(b, knows, a), W).   % W = [f(a, knows, b)]
:- module(factgraph, [closure/2, step/2, why/3, holds/2]).
:- use_module(library(lists)).
:- use_module(library(apply)).

transitive(part_of).
symmetric(knows).

step(Fs, New) :- findall(F, ( derive(Fs, F), \+ memberchk(F, Fs) ), N0), sort(N0, New).
derive(Fs, f(A, R, C)) :- transitive(R), member(f(A, R, B), Fs), member(f(B, R, C), Fs).
derive(Fs, f(B, R, A)) :- symmetric(R), member(f(A, R, B), Fs).

closure(Fs, C) :- sort(Fs, S), step(S, New), ( New == [] -> C = S ; append(S, New, S2), closure(S2, C) ).
holds(Fs, F) :- closure(Fs, C), memberchk(F, C).

% why(+Facts, +Fact, -Stated): stated facts that derive Fact, found by a search that never reuses a fact.
why(Fs, F, [F]) :- memberchk(F, Fs), !.
why(Fs, F, W) :- why_(Fs, F, [F], W0), !, sort(W0, W).
why_(Fs, F, _, [F]) :- memberchk(F, Fs).
why_(Fs, f(A, R, C), Seen, W) :- transitive(R), closure(Fs, Cl), member(f(A, R, B), Cl), B \== A, B \== C, \+ memberchk(f(A, R, B), Seen), \+ memberchk(f(B, R, C), Seen), memberchk(f(B, R, C), Cl), why_(Fs, f(A, R, B), [f(A, R, B)|Seen], W1), why_(Fs, f(B, R, C), [f(B, R, C)|Seen], W2), append(W1, W2, W).
why_(Fs, f(B, R, A), Seen, W) :- symmetric(R), \+ memberchk(f(A, R, B), Seen), why_(Fs, f(A, R, B), [f(A, R, B)|Seen], W).
