in_list(X, [X]) :- !. 
in_list(X, [X|_]) :- !. 
in_list(X, [Y|_]) :- is_list(Y),
					in_list(X, Y),
					!.

in_list(X, [_|T]) :- in_list(X, T). 