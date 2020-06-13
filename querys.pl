%Quem são os pais de thiago
pais(thiago, X).
%Quem são os pais de lucas
pais(lucas, Y).
%Quem são os pais de lucas
pais(joao, W).
%Quem são os pais de antonio
pais(antonio, Z).

%Thiago é pai de lucas?
pais(thiago, lucas).
%Lucas é pai de thiago.
pais(lucas, thiago).

%Quem são os filhos de jose
pais(X, jose).
%Quem são os filhos de maria
pais(X, maria).

%Quem são os filhos de thiago
pais(X, thiago).
%Quem são os filhos de manoela
pais(X, manoela).

%Quem são os filhos de lucas
pais(X, lucas).
%Quem são os filhos de eliza
pais(X, eliza).


irmao(X,Y):-homem(X), pai(Z,X), pai(Z,Y),X\=Y.
irmao(X,Y):-homem(X), mae(Z,X), mae(Z,Y),X\=Y. 