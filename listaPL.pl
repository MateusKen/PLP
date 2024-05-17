/*EXERCICIO 1*/
onde(_,[],0).
onde(E,[E],1).
onde(E,[E|_],1).
onde(E,[_|Xs],R) :- onde(E,Xs,R1), R is R1+1.

/*EXERCICIO 2*/
ateh(_,[],[]).
ateh(E,[E|_],[E]).
ateh(E,[A|Xs],[A|Bs]) :- ateh(E,Xs,Bs).