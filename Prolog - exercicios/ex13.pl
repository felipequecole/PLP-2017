between(X, X, [X]).
between(N1, N2, [N1|Lista]):-
	N1 < N2, 
	X is N1+1, 
	between(X, N2, Lista), !. 