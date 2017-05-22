cont([], 0).
cont([_|Z], S) :- cont(Z, S1), S is S1 + 1. 

n_par(Lista) :- cont(Lista, N), N mod 2 =:= 0. 
n_impar(Lista) :- cont(Lista, N), N mod 2 =:= 1. 