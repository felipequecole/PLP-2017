maxlista([X],X) :- !. % inicializa
maxlista([H|T], Max):-  % mantem o atual
	maxlista(T, Max), 	% chama recursivamente
	Max >= H,			% se o atual for maior que a cabeca
	!.					% corte verde

maxlista([H|T], H):- 	% muda o valor do max
	maxlista(T, Max), 	% chama recursivamente
	H >  Max.			% caso a cabeca seja maior que max atual 
