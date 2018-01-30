city(asia, tokyo).
city(asia, seoul).
city(asia, beijing).
city(europe, berlin).
city(europe, amsterdam).
city(europe, paris).
city(europe, london).
city(america, new_york).
city(america, vancouver).
city(america, 5).


animal(four, [dog, cat, horse, giraffe, antelope]).
animal(two, [human, starling]).
animal(three, [kangaroo, tripod_fish]).
animal(one, mollusc).

/* Findall

findall(+T, +Goal, -List):
List is the list of all instances of T for which Goal succeeds.

find all the cties in europe
findall(City, city(europe, City), L).

find all the continents contining amsterdam
findall(continent: Cont, city(Cont, amsterdam), L).
*/


/* Bagof

bagof(+T, +Goal, -List):
For a given substitution σ of free variables in Goal
List is the list of all instances of T such that Goal σ succeeds.

list animals by number of legs
bagof(Legs, animal(Legs, Name), L).

list cities by continent
bagof(City, city(Cont, City), L).
Cont = america, L = [new_york, vancouver] ;

list continents by city
bagof(Cont, city(Cont, City), L).

so lists the +T, grouped by other free variables

*/



/* Setof

setof(+T, +Goal, -List):
For a given substitution σ of free variables in Goal
List is the sorted set of all instances of T such that Goalσ succeeds.

setof(City, city(europe, City), L).
L = [amsterdam, berlin, london, paris] ;
*/



/* ^

list Zs grouped on X, Y
bagof(Z, bar(X,Y,Z), L).

list Zs based on X, Y excluding X (so Y only‚
bagof(Z, X^bar(X,Y,Z), L)
*/

/* Don'ts


findall(X, member(X, L), List)
(use L directly).


findall(X, Goal, List), member(Elt, List)
(call Goal directly and use X in place of Elt).
 */
 
