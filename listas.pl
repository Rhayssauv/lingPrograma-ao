soma_lista([], 0).
soma_lista([Cabeca|Cauda], Soma) :-
   soma_lista(Cauda, SomaCauda),
   Soma is Cabeca + SomaCauda.

enesimo(1, [Cabeca|_], Cabeca).
enesimo(N, [_|Cauda], Elemento):-
    N > 1,
    N1 is N - 1,
    enesimo(N1, Cauda, Elemento).

posicao(Element, [Element|_], 1).
posicao(Element, [_| Cauda], Posicao) :-
    posicao(Element, Cauda, NovaPosicao),
    Posicao is NovaPosicao + 1.


/*
comeca_com(Element, [Cabeca|_]) :-
    Element = Cabeca.
*/

comeca_com(Element, [Element|_]).


tres_elementos([_,_,_]).

sublista(sub, lista) :-
   append(_, L2, lista),
   append(sub,_, L2).

/*
 * 1. Crie um predicado chamado comeca_com(Element, List)
 *
 * Exemplo: comeca_com(a, [a,b,c]).
 *          true
 *
 * 2. Crie um predicado que verifique se uma lista tem exatamente 3
 * elementos.
 *
 *
 * 3. Crie um predicado chamado sublista que verifica se uma lista é
 * sublista de outra lista
 * exemplo: sublista([2,3], [1,2,3,4]).
 *          true
 *
 *          append(sl, ,l).
 */
