tam_lista([], 0). 
tam_lista([_|T], N):-
	tam_lista(T, N1),
	N is N1+1.

lista_maior(A, B) :- tam_lista(A, R1),
					 tam_lista(B, R2), 
					 R1 > R2.  


verifica_par(E1, E2, [E1, E2 | Y], Y):- !. 
verifica_par(_, _, [_, _], []):- !. 
verifica_par(E1, E2, [_, Y | Z], L) :- verifica_par(E1, E2, [Y|Z], L). 
