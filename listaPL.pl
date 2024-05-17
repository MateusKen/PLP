/*EXERCICIO 1*/
onde(_,[],0).
onde(E,[E],1).
onde(E,[E|_],1).
onde(E,[_|Xs],R) :- onde(E,Xs,R1), R is R1+1.

/*EXERCICIO 2*/
ateh(_,[],[]).
ateh(E,[E|_],[E]).
ateh(E,[A|Xs],[A|Bs]) :- ateh(E,Xs,Bs).

/*EXERCICIO 3*/
apos(_,[],[]).
apos(E,[E|Xs],Xs).
apos(E,[A|Xs],R) :- apos(E,Xs,R).

/*EXERCICIO 4*/
npri(N, List) :- npri(N, 1, [], List).
npri(N, Curr, Acc, List) :- Curr > N, reverse(Acc, List).
npri(N, Curr, Acc, List) :-Curr =< N,NewCurr is Curr+1,npri(N, NewCurr, [Curr|Acc], List).

/*EXERCICIO 5*/
