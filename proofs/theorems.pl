% Theorems, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).
:- use_module('../prolog/factgraph').

% Domain: every set of up to 3 facts over nodes a, b, c and relations part_of, knows (988 sets).
all_facts(All) :- findall(f(X, R, Y), ( member(X, [a, b, c]), member(R, [part_of, knows]), member(Y, [a, b, c]) ), All).
facts(Fs) :- all_facts(All), between(0, 3, K), length(Fs, K), pick(Fs, All).
pick([], _).
pick([X|Xs], [Y|Ys]) :- ( X = Y, pick(Xs, Ys) ; pick([X|Xs], Ys) ).

% 1. The closure contains the stated facts and nothing more follows from it.
theorem(closed_and_contains) :- forall(facts(Fs), ( closure(Fs, C), subtract(Fs, C, []), step(C, []) )).

% 2. It matches an independent definition: part_of facts joined by paths, knows facts in either direction.
theorem(closure_matches_brute_force) :- forall(facts(Fs), ( closure(Fs, C), all_facts(All), naive(Fs, Must), msort(C, MC), msort(Must, MC) )).
in_every_closed(Fs, F) :- naive(Fs, N), memberchk(F, N).
naive(Fs, N) :- findall(f(A, R, C2), ( member(R, [part_of, knows]), member(A, [a, b, c]), member(C2, [a, b, c]), reach(Fs, R, A, C2, 3) ), N0), sort(N0, N).
reach(Fs, R, A, C, _) :- member(f(A, R, C), Fs).
reach(Fs, knows, A, C, D) :- D > 0, D1 is D - 1, reach(Fs, knows, C, A, D1).
reach(Fs, part_of, A, C, D) :- D > 0, D1 is D - 1, member(B, [a, b, c]), reach(Fs, part_of, A, B, D1), reach(Fs, part_of, B, C, D1).

% 3. Closing twice changes nothing, and more facts never derive less.
theorem(idempotent_and_monotone) :- forall(facts(Fs), ( closure(Fs, C), closure(C, C), all_facts(All), forall(( member(F, All), \+ memberchk(F, Fs) ), ( closure([F|Fs], C2), subtract(C, C2, []) )) )).

% 4. Every derived fact has a reason made only of stated facts.
theorem(why_explains) :- forall(facts(Fs), ( closure(Fs, C), forall(member(F, C), ( why(Fs, F, W), subtract(W, Fs, []), holds(W, F) )) )).
