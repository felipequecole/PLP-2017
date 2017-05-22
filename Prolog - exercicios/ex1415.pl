% ex 14
classe(N, positivo) :- N > 0, !.
classe(0, zero) :- !. 
classe(_, negativo). 

% ex 15
split([], [], []). 
split ([H|T], [H|T1], N) :- H >= 0, 
							split(T, T1, N), 
							!.  
split([H|T], P, [H, T1]) :- split(T, P, T1). 