% FATOS
/*
 * FATOS 1 - HOMENS DA FAMILIA 
 sexo masculino:- JOSÉ, THIAGO, JOÃO, LUCAS, ANTÔNIO.
*/
homem(jose).
homem(thiago).
homem(joao).
homem(lucas).
homem(antonio).
/*
 * FATOS 2 - MULHERES DA FAMILIA 
 sexo feminino:- MARIA, MANOELA, ELIZA.
*/
mulher(maria).
mulher(manoela).
mulher(eliza).
/*
 * REGRA 3 - GRAU DE PARENTESCO
 * Filhos de jose e maria: Thiago e Lucas
 * Filhos de thiago e manoela: João
 * Filhos de lucas: Antônio
*/
pais(thiago, jose).
pais(thiago, maria).

pais(lucas, jose).
pais(lucas, maria).

pais(joao, thiago).
pais(joao, manoela).

pais(antonio, lucas).
pais(antonio, eliza).

% REGRAS
