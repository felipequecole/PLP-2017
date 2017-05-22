desparentizar([], []) :- !. 
desparentizar([H|T], S):-
	is_list(H), 
	desparentizar(H, S1),
	desparentizar(T, S2), 
	append(S1, S2, S),
	!.

desparentizar([H|T], [H|S]):-
	desparentizar(T, S).