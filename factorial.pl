/* Let fact(N, FN) stand for factorial of N is FN */
fact(0, 1).
fact(N, FN) :-
  N > 0,
  X is N - 1,
  fact(X, FX),
  FN is N * FX.


/* Tail-recursive version */
factorial(N, FN) :-
  trf(N, 1, FN).

trf(0, Acc, Res) :-
  Res is Acc.

trf(N, Acc, Res) :-
  N > 0,
  Acc > 0,
  A is Acc * N,
  X is N -1,

  trf(X, A, Res).
