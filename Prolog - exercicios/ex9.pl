t(0, zero).
t(1, um).
t(2, dois).
t(3, tres).
t(4, quatro).
t(5, cinco).
t(6, seis).
t(7, sete).
t(8, oito).
t(9, nove).

traduz([], []). 
traduz([H|T], [H1|T1]):-
	t(H, H1),
	traduz(T, T1).