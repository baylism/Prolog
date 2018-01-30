/* sumList(L,S)
S is the sum of all integers on list L.
Assume L is a list of positive or negative integers
CHECK WITH TA
*/

sumlist([], 0).

sumlist([H|T], R) :-
  sumlist(T, X),
  R is H + X.
