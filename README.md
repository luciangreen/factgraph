# factgraph

a graph of facts with inference. Facts are f(Subject, Relation, Object). Relations can be declared transitive or symmetric: by default part_of is transitive and knows is symmetric, and closure/3, why/4 and holds/3 take a declaration rels(Transitive, Symmetric) for any other relations. closure/2 adds everything that follows, and why/3 gives the chain of stated facts behind a derived one.

## Use

```prolog
?- use_module(prolog/factgraph).
?- closure([f(wheel, part_of, car), f(car, part_of, fleet)], C).
%  C = [f(car, part_of, fleet), f(wheel, part_of, car), f(wheel, part_of, fleet)]
?- closure(rels([older_than], [sibling]), [f(ann, older_than, bo), f(bo, older_than, cy), f(ann, sibling, bo)], C).
%  C also holds f(ann, older_than, cy) and f(bo, sibling, ann)
?- why([f(a, knows, b)], f(b, knows, a), W).   % W = [f(a, knows, b)]
```

## Proofs

`proofs/theorems.pl` proves 5 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. every set of up to 3 facts over nodes a, b, c and relations part_of, knows (988 sets).

1. The closure contains the stated facts and nothing more follows from it.
2. It matches an independent definition: part_of facts joined by paths, knows facts in either direction.
3. Closing twice changes nothing, and more facts never derive less.
4. Every derived fact has a reason made only of stated facts.
5. Relations can be declared: with knows transitive and part_of symmetric the closure matches the brute-force definition with those roles, the default declaration gives exactly closure/2, and every derived fact is still explained.

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
