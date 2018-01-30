% common(L1, L2, I)
/* I is the common elements of L1 adn L2 */

common([], _, []).

common([H|T], L2, [H|Res]) :-
  member(H, L2),
  common(T, L2, Res).

common([H|T], L2, Res) :-
  common(T, L2, Res).

removeDuplicates([], []).

removeDuplicates([H|T], Res) :-
  member(H, T),
  removeDuplicates(T, Res).

removeDuplicates([H|T], [H|Res]) :-
  removeDuplicates(T, Res).

commonNoDuplicates(L1, L2, I) :-
  common(L1, L2, Res),
  removeDuplicates(Res, I).
