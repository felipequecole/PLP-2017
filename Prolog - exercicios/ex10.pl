% procedimento para procurar elemento na lista
nalista([], _) :- false. % se acabou a lista, é pq nao achou
nalista([H|_], R) :-	 % se ta na cabeca e achou, acaba
	H == R,
	!. 					% corte verde

nalista([_|T], R) :- 	% senao, procura na cauda
	nalista(T, R). 

% procedimento para saber se a segunda lista eh subset da primeira
subset(_, []):- 	% checou todos os elementos do segundo
	true,			% e nao deu false antes, entao é subset
	!. 				% corte verde

subset(L, [H|T]) :- % procura por cada elemento da l2 em l1
	subset(L, T), 	% chamada recursiva
	nalista(L, H). 	% mantem true, caso tenha encontrado
					% só continua olhando enquanto acha, senao 
					%  retorna falso 
