subList([H], L2) :-
  member(H, L2).

subList([H|T], L2) :-
  member(H, L2),
  subList(T, L2).

mem(X, [X|_]).

mem(X, [H|T]) :-
  mem(X, T).
