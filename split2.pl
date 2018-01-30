% split(L, N, L1, L2)
/* Split a list L into two parts L1 and L2 such that the length of
the first part is N. */

split([], _, [], []).

split(L, N, L1, L2) :-
  append(L1, L2, L),
  length(L1, N).
