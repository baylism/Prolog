/* enrolment(L, Student, Degree) */
/* Given a list L of enrolments, and a student’s name,
the program finds the degree of the student.

[(msc, [john, mary, pete]), (meng, [bob, rob, tod]), (msc, [dave, mave])] as L,
rob as Student,
the program should return meng as Degree.

*/

enrolment(L, Student, Degree) :-
  member((Degree, SL), L),
  member(Student, SL).
