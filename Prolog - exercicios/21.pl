insere_ordenado(X, [], [X]) :- !. 
insere_ordenado(X, [Y|Z], [X,Y|Z]) :-
	X =< Y,
	!.  
insere_ordenado(X, [Y|W], [Y|Z]) :-
	insere_ordenado(X, W, Z), 
	!. 