% Extra-logical functions
/* Also a comment */
write('Hello world').
number(a).
halt.
trace.
%-z
%spy(sells/3), + -
%

consult(user).
consult(trade).


%ctrl-d to add EOL
%ctrl-c to interrupt, the h-a

/* Syntax */
:-    if/implies
,     and
, \+  and not
;     or

X1 =:= X2    succeeds if X1 and X2 evaluate to the same number
X1 =\= X2    succeeds if X1 and X2 don't evaluate to the same number


p:c1;c2 === p:-c1 <\n> p:-c1


X is Expr    unify X with value of Expr (X number or unbound var, Expr ground)



H :- C, C1.   conditional clause
H.            unconditional clause
p()           predicate or relation name
H C           atomic formula
C C1          call or condition
britain       constant
-2 6.5        number
X             variable
f(t1, tn)     compound term/function f(X, Y)
'string'      string
[]            list
dog(weasley)  fact (undonditional clause with no variables)
dog(X)        everything else is a rule
?-C, Cn.<\n>  query (conjunction of conditions)
?-dog(w)      request for proof
?-dog(x)      request for substitution
needs(_, car) anonymous variable (numtiple in came rule are different variables)


/* Scope */
X             the clause or query in which it occurs
all else      the whole program and any query


/* Unification / Proof */
substitution          mapping from variables to terms
sub applied to term   creates a new term s identical to t. S is instance of t.
unification of terms  there is a sub such that two terms are equal

/* Lists */
[]            empty list
[H|T]         H: term, first item. T: list, tail
[]            H: undefined, T: undefines
[a]           H: a, T: []
