/* process(L1, L2, Consistent, Inconsistent)

where L1 is a given list of items of the form (Name, Number),
and L2 is a given list of items of the form (Name, Number, MoreInfo).

Then the output Consistent should be those items (Name, Number, MoreInfo)
in L2 that agree on (Name, Number) with list L1,
and Inconsistent should be whatever is left over from list L2.


age([(mary, 20), (john, 30), (pete, 40)], [(mary, 20, single), (peter, 40, single), (joe, 35, widowed), (john, 35, married)], 40, R)
should give the answer
[pete, peter]
*/

age(L1, L2, Age, Result) :-
  findall(Name, match(L1, L2, Age, Name), Result).

match(L1, L2, Age, Name) :-
  member((Name, Age), L1);
  member((Name, Age, _), L2).
