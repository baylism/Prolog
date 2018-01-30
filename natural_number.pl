/* Non tail-recursive */
natural_number(0).

natural_number(N) :-
  natural_number(M),
  N is M + 1.

/* Tail-recursive version (can't generate) */
natural_number_t(0).

natural_number_t(N) :-
  M is N - 1,
  natural_number_t(M).