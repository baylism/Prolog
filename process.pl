% process(L1, L2, Consistent, Inconsistent)
same_name_number([(Name, Number)|_], (Name, Number, _)).

same_name_number([_|T], (Name, Number, Other)) :-
  same_name_number(T, (Name, Number, Other)).

process([], [], [], []).

process(_, [], [], []).

process(L1, [(Name, Num, Other)|T2], [(Name, Num, Other)|C], I) :-
  same_name_number(L1, (Name, Num, Other)),
  process(L1, T2, C, I).

process(L1, [(Name, Num2, Other)|T2], C, [(Name, Num2, Other)|I]) :-
  process(L1, T2, C, I).

/*

same_name_number([(mary, 20), (john, 30), (pete, 40)], (mary, 20, single)).
same_name_number([(john, 30), (mary, 20), (pete, 40)], (mary, 20, single)).


*/
