% sift(L, N, Result). Result is list L but with all occurrences
% of elements greater than N removed.
sift([], _, []).

sift([H|T], N, [H|TR]) :-
  H =< N,
  sift(T, N, TR).

sift([H|T], N, R) :-
  sift(T, N, R).
