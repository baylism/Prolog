/* rev(L, RevL)
RevL is list L with the order of its elements reversed.

rev([1,2,3],R).  gets the answer R=[3,2,1].
rev([1,pears,[],[2,3]],R).   gets the answer R=[[2,3],[],pears,1]

Prolog has an inbuilt predicate reverse.  Do not use it for this exercise.
For this exercise give two different definitions for rev,
one non-tail-recursive and one tail-recursive.
*/

rev([], []).

rev([H|T], Result) :-
  rev(T, R),
  append(R, [H], Result).

rev2(L, Rev) :- h_rev(L, [], Rev).

h_rev([], Acc, Acc).

h_rev([H|T], Acc, Rev) :-
  h_rev(T, [H|Acc], Rev).

% h_rev([H|T], Acc, Rev) :-
%   append(H, Acc, X),
%   h_rev(T, X, Rev).
