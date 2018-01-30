% split(L, N, L1, L2)
/* Split a list L into two parts L1 and L2 such that the length of
the first part is N. */

split([], _, [], []).

% length of l2 > 3
split([H|T], N, L1, [H|L2]) :-
  length(L1, X),
  X >= N,
  split(T, N, L1, L2).

% length of l1 =< N
split([H|T], N, [H|L1], L2) :-
  split(T, N, L1, L2).

split2(L, 0, [], L).
split2([H|T], N, [H|X], L2) :-
  N > 0,
  M is N - 1,
  split(T, M, X, L2).
