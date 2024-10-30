homem(evandro).
homem(ecles).
homem(elinaldo).
homem(marcelo).
homem(bras).
homem(josa).
homem(anderson).
mulher(rosana).
mulher(aline).
mulher(nilza).
mulher(teca).
mulher(rhayssa).


pai(evandro, rhayssa).
pai(elinaldo, marcelo).
pai(bras, rosana).
pai(bras, elinaldo).
pai(bras, teca).
pai(anderson, rhiane).
pai(josa, anderson).
pai(evandro, ecles).
mae(rosana, rhayssa).
mae(andressa, rhiane).
mae(aline, marcelo).
mae(rosana, ecles).
mae(teca, anderson).
mae(nilza, teca).
mae(nilza, elinaldo).
mae(nilza, rosana).

irmaos(P1, P2) :- pai(Pai, P1), pai(Pai, P2), P1 \= P2.
irmaos(P1, P2) :- mae(Mae, P1), mae(Mae, P2), P1 \= P2.
irmao(P1, P2) :- homem(P1), irmaos(P1, P2).
irma(P1, P2) :- mulher(P1), irmaos(P1, P2).


ehfilho(P1, P2) :- pai(P2, P1); mae(P2, P1).
filho(P1, P2) :- homem(P1), ehfilho(P1, P2).
filha(P1, P2) :- mulher(P1), ehfilho(P1, P2).

ehtio(P1, P2) :- pai(Pai, P2), irmaos(Pai, P1).
ehtio(P1, P2) :- mae(Mae, P2), irmaos(Mae, P1).
tio(P1, P2) :- ehtio(P1, P2), homem(P1).
tia(P1, P2) :- ehtio(P1, P2), mulher(P1).

ehprimo(P1, P2) :- pai(PaiP1, P1), pai(PaiP2, P2), mae(MaeP1, P1), mae(MaeP2, P2), (irmaos(PaiP1, PaiP2) ; irmaos(PaiP1, MaeP2) ; irmaos(MaeP1, PaiP2) ; irmaos(MaeP1, MaeP2)).
primo(P1, P2) :- ehprimo(P1, P2), homem(P1).
prima(P1, P2) :- ehprimo(P1, P2), mulher(P1).

avos(P1, P2) :- mae(Mae, P2), pai(Pai, P2), (ehfilho(Mae, P1) ; ehfilho(Pai, P1)).
avo(P1, P2) :- avos(P1, P2), homem(P1).
avoh(P1, P2) :- avos(P1, P2), mulher(P1).

/*
 * Exercicios:
 *(x) 1. Aprimore a regra de irmão para garantir que P1 seja homem.
 *(x) 2. Crie uma regra irma(P1, P2) que verifique se P1 é irmã(mulher)
 * de P2.
 * 3. Crie regras para definir as seguintes relações:
 *(x) 3.1. filho(P1, P2).
 *(x) 3.2. filha(P1, P2).
 *(x) 3.3. tio(P1, P2).
 *(x) 3.4. tia(P1, P2).
 *(x) 3.5. primo(P1, P2).
 *(x) 3.6. prima(P1, P2).
 *(x) 3.7. Aprimore avo(P1, P2) para garantir que P1 seja homem.
 *(x) 3.8. avoh(P1, P2).
*/


