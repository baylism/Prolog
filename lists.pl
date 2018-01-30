/* belongs_to(item, list) */
belongs_to(X, [X|_]).

belongs_to(X, [H|T]) :-
  belongs_to(X, T).


/* concat(list1, list2, result) */
concat(L1, L2, L3) :-
  concat([], L2, L2).

concat(L1, L2, L3) :-
  L1 = [H1|T1],
  concat(T1, L2, T3),
  L3 = [H1|T3].


/* even_odd(All, Even, Odd) */
even_odd([], [], []).

even_odd([N|Tall], [N|Teven], Odd) :-
  N mod 2 =:= 0,
  even_odd(Tall, Teven, Odd).

even_odd([N|Tall], Even, [N|Todd]) :-
  N mod 2 =:= 1,
  even_odd(Tall, Even, Todd).

l([1,2]).


/* same(list1, list2) */
same([], []).

same([H|T1], [H|T2]) :-
  same(T1, T2).

/* append(list1, list2, result) */
append1([], L, L).

append1([H|L1], L2, [H|L3]) :-
  append1(L1, L2, L3).

add(X, L, [X|L]).

delete(X, [X|T], T).
delete(X, [Y|T], [Y|T1]) :-
  delete(X, T, T1).
