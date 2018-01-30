sells(usa, grain, japan).
sells(Seller, P, Buyer) :- produces(Seller, P), needs(Buyer, P).

produces(oman, oil).
produces(iraq, oil).
produces(japan, computers).
produces(germany, cars).
produces(france, iron).

needs(germany, iron).
needs(japan, cars).
needs(britain, cars).
needs(Country, oil) :- needs(Country, cars).
needs(Country, oil) :- needs(C, cars).
needs(X, computers) :- country(X).
needs(britain, cars).
needs(japan, cars).
needs(britain, coal).
needs(japan, coal).
needs(japan, diamonds).

country(britain).
country(japan).
country(france).

%nat_res(C, I) :- has(C, I).
nat_res(france, coal).
nat_res(britain, coal).
nat_res(south_africa, diamonds).

ce(france, coal).
ce(south_africa, diamonds).


/* 5a */
%needs(C, X), nat_res(C, X).

/* 5 b*/
%produces(C, iron), ce(C, X), needs(japan, X).

/* 5c */
%needs(C, oil), needs(C, coal).

/* 5d */
%needs(C, X), ce(south_africa, X).

/* 6a */
mines(C, X) :- nat_res(C, X), ce(C, X).

/* 6b */
exports(C1, I, C2) :- (produces(C1, I) ; mines(C1, I)), needs(C2, I).

/* 6c */
in_competition(C1, C2, I) :- exports(C1, I, _), exports(C2, I, _), C2 \= C2.

/* 6d */
lower_price(I) :- in_competition(C1, C2, I).



/*
mines(C, X).

exports(C, X1, _), exports(C, X2, _), X1 \= X2.
