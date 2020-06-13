genitor(srWilson, jefferson).
genitor(maria, jefferson).
genitor(srWilson, evilando).
genitor(maria, jefferson).

genitor(joao, eron).
genitor(carol, eron).

genitor(felipe,steve).
genitor(ada,steve).

genitor(stifler,joao).
genitor(ariel,joao).

genitor(stifler,felipe).
genitor(ariel,felipe).

genitor(bill,stifler).
genitor(luiza,felipe).

homem(felipe).
homem(bill).
homem(evilando).
homem(eron).
homem(joao).
homem(srWilson).
homem(steve).
homem(stifler).

mulher(jefferson).
mulher(artur).
mulher(maria).
mulher(carol).
mulher(ada).
mulher(ariel).
mulher(luiza).

pai(X,Y) :- genitor(X,Y), homem(X).
mãe(X,Y) :- genitor(X,Y), mulher(X).

filho(X,Y) :- genitor(Y,X), homem(X).
filha(X,Y) :- genitor(Y,X), mulher(X).

avô(X, Y) :- pai(X, Z), pai(Z, Y); pai(X, Z), mãe(Z, Y).
avó(X, Y) :- mãe(X, Z), mãe(Z, Y); mãe(X, Z), pai(Z, Y).

tioavo(X,Y) :- irmao(X, H), pai(H, Z), pai(Z, Y);irmao(X, H), pai(H, Z), mãe(Z, Y).

irmaopartedePai(X,Y) :- genitor(PAI,X), genitor(PAI,Y), homem(PAI), X \== Y. 

irmaopartedeMae(X,Y) :- genitor(MAE,X), genitor(MAE,Y), mulher(MAE), X \== Y. 

irmao(X,Y) :- genitor(Z,X), genitor(Z,Y), X \== Y. 

tio(X,Y) :- irmao(X,Z), pai(Z,Y); irmao(Z, X), mãe(Z, Y).

primo(A,B) :- homem(A),genitor(X,A), irmao(X,Y), genitor(Y,B).