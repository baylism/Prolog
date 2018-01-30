removeDuplicates([], []).

removeDuplicates([H|T], Res) :-
  member(H, T),
  removeDuplicates(T, Res).

removeDuplicates([H|T], [H|Res]) :-
  removeDuplicates(T, Res).
