shift_esq([X | Z], L) :- append(Z, [X], L), !. 

shift_n_esq(0, L, L):- !.
shift_n_esq(N, L1, L2) :-  
	N1 is N-1, 
	shift_esq(L1,L),
	shift_n_esq(N1, L, L2). 

shift_right(L, L1):-
	shift_esq(L1, L), !.

shift_n_right(0, L, L):- !. 
shift_n_right(N, L1, L2):-
	N1 is N-1, 
	shift_right(L1, L),
	shift_n_right(N1, L, L2). 