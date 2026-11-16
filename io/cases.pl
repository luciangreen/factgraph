:- module(cases, [title/1, case/3]).
:- use_module('../prolog/factgraph').
:- use_module(engine).
title('factgraph').
node(N) :- rnd_pick([wheel, car, fleet, engine, piston, alice, bob, carol], N).
fact_g(f(X, R, Y)) :- node(X), rnd_pick([part_of, knows], R), node(Y), X \== Y, !.
fact_g(f(wheel, part_of, car)).
facts_g(Fs) :- rnd_int(0, 6, K), length(Fs, K), maplist(fact_g, Fs).
case(closure, [Fs], closure) :- facts_g(Fs).
case(holds, [Fs, F], holds) :- facts_g(Fs), fact_g(F).
case(why, [Fs, F], why) :- facts_g(Fs), closure(Fs, C), ( C == [] -> F = f(a, knows, b) ; rnd_pick(C, F) ).
