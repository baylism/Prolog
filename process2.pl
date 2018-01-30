/* process(L1, L2, Consistent, Inconsistent)

where L1 is a given list of items of the form (Name, Number),
and L2 is a given list of items of the form (Name, Number, MoreInfo).

Then the output Consistent should be those items (Name, Number, MoreInfo)
in L2 that agree on (Name, Number) with list L1,
and Inconsistent should be whatever is left over from list L2.


process([(mary, 20), (john, 30), (pete, 40)], [(mary, 20, single), (pete, 40, single), (joe, 35, widowed), (john, 35, married)], C, I)
should give the answer
C= ([(mary, 20, single), (pete, 40, single)]
I= ([(john, 35, married), (joe, 35, widowed)].
*/

process(L1, L2, Consistent, Inconsistent) :-
  findall(
    (Name, Age, Other),
    (member((Name, Age), L1), member((Name, Age, Other), L2)),
    Consistent
    ),
  findall(
    (Name, Age, Other),
    (member((Name, Age, Other), L2), \+member((Name, Age), L1)),
    Inconsistent
    ).
