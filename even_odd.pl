% even_odd(All, Even, Odd)
even_odd([], [], []).

% even case
even_odd([H|T], [H|Te], O) :-
  H mod 2 =:= 0,
  even_odd(T, Te, O).

% odd case
even_odd([H|T], E, [H|To]) :-
  H mod 2 =:= 1,
  even_odd(T, E, To).
