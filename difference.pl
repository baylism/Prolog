difference(L, [], L).

difference([], L, []).

difference([H|T], L2, [H|T2]) :-
  difference(T, L2, T2).
