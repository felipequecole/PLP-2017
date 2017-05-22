% ex 14
%classe(N, positivo) :- N > 0, !.
%classe(0, zero) :- !. 
%classe(_, negativo). 

% ex 15
split([ ],[ ],[ ]).
split([X|Y],[X|Z],W) :- X >= 0, split(Y,Z,W).
split([X|Y],Z,[X|W]) :- X < 0, split(Y,Z,W).