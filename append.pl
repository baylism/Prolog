app([], L, L).

app([H|T], L, [H|R]) :-
  app(T, L, R).
