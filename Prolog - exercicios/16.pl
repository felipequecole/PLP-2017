% procedimento para procurar elemento na lista
nalista([], _) :- false. % se acabou a lista, é pq nao achou
nalista([H|_], R) :-	 % se ta na cabeca e achou, acaba
	H == R,
	!. 					% corte verde

nalista([_|T], R) :- 	% senao, procura na cauda
	nalista(T, R). 

union([], UUUU, UUUU). 

union([H|T], B, [H|U]):-
	not(nalista(B, H)),
	union(T, B, U),
	!.

union([_|T], B, U):-
	union(T, B, U). 

intersect([], _, []):- !.
intersect(_, [], []):- !.

intersect([H|T], B, [H|I]):-
	nalista(B, H), 
	intersect(T, B, I), 
	!. 

intersect([_|T], B, I):-
	intersect(T, B, I). 


dif([], _, []). 
dif(A, [], A). 
dif([H|T], B, [H|D]):-
	not(nalista(B, H)), 
	dif(T, B, D),
	!. 
dif([_|T], B, D):-
	dif(T, B, D). 

inter_tres(L1, L2, L3, Lr):-
	intersect(L1, L2, La), 
	intersect(La, L3, Lr). 