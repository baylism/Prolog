/* student_list(L, Meng, MSc)
Separate a list L of students into the Meng students and the MSc students.
L is a list of students and their degree.
Each element of L is of the form (Degree, List of students).


[(msc, [john, mary, pete]), (meng, [bob, rob, tod]), (msc, [dave, mave])] as L
Meng should be [bob, rob, tod]
MSc should be [john, mary, pete, dave, mave],

the order of the names in these lists is not important.
*/

student_list(L, Meng, MSc) :-
  findall(S, (member((msc, SL), L), member(S, SL)), MSc),
  findall(S, (member((meng, SL), L), member(S, SL)), Meng).
