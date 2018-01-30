% higher_lower(L, N, RHigher, RLower).
/* RHigher lists elements in L higher than N, RLower lists those lower. */

higher_lower([], _, [], []).

% higher case
higher_lower([H|T], N, [H|THigher], RLower) :-
  H > N,
  higher_lower(T, N, THigher, RLower).

% lower case
higher_lower([H|T], N, RHigher, [H|TLower]) :-
  H < N,
  higher_lower(T, N, RHigher, TLower).

% equal case
higher_lower([H|T], N, RHigher, RLower) :-
  higher_lower(T, N, RHigher, RLower).
