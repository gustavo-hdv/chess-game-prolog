pegaMovimento(X,Y,X1,Y1):-
	
	write(' é sua vez!'),nl,write('Qual peça deseja mover: '),nl,
	read(X),nl,write('Para qual casa deseja mover: '),nl,
	read(Y),
	(X = 'sair',
	  	halt;
	casa(X,X1),
	casa(Y,Y1)).

