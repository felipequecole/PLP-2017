cont(_, _, 0).
cont(X, [H|T], Cont):- X == H,
						Cont1 is Cont+1, 
						cont(X, T, Cont1),
						!. 

cont(X, [H|T], Cont):- cont(X, T, Cont), 
						!.
						 
cont(X, [H|_], Cont) :- is_list(H), 
						cont(X, H, Cont). 