/* followedBy(X,Y,L)
X is followed by Y on list L.
*/

followedBy(X, Y, L) :-
  append(_, [X, Y|_], L).
