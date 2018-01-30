fib(0, 1).
fib(1, 1).
fib(N, R) :-
  X is N - 1,
  Y is N - 2,
  fib(X, R1),
  fib(Y, R2),
  R is R1 + R2.