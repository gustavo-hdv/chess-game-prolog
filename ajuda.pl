getDescricaoPecas() :-
  pecasBrancas(PB),
  pecasPretas(PP),
  getDescPecasBrancas(PB),
  nl,
  getDescPecasPretas(PP).


getDescPecasBrancas([]).
getDescPecasBrancas([X|Y]) :-
  branco(X, R),
  atomic_list_concat([X, R], ' - ', RD),
  write(RD), nl,
  getDescPecasBrancas(Y).

getDescPecasPretas([]).
getDescPecasPretas([X|Y]) :-
  preto(X, R),
  atomic_list_concat([X, R], ' - ', RD),
  write(RD), nl,
  getDescPecasPretas(Y).


printTabuleiroComCoordenadas([], C, StringTabuleiro) :- C =:= 64, write(StringTabuleiro), nl, getColunas(Colunas), nl, write(Colunas), nl.
printTabuleiroComCoordenadas([X|Y], C, StringTabuleiro) :- 
  M is C + 1,
  (C mod 8 =:= 0 -> getLinhaFromIndice(C, X, L), write(StringTabuleiro), nl, espacamento(L, C, V), printTabuleiroComCoordenadas(Y, M, V);
  atom_concat(StringTabuleiro, X, R), espacamento(R, C, Z), printTabuleiroComCoordenadas(Y, M, Z)).

getLinhaFromIndice(0, Peca, R) :- atom_concat('8   ', Peca, R).
getLinhaFromIndice(8, Peca, R) :- atom_concat('7   ', Peca, R).
getLinhaFromIndice(16, Peca, R) :- atom_concat('6   ', Peca, R).
getLinhaFromIndice(24, Peca, R) :- atom_concat('5   ', Peca, R).
getLinhaFromIndice(32, Peca, R) :- atom_concat('4   ', Peca, R).
getLinhaFromIndice(40, Peca, R) :- atom_concat('3   ', Peca, R).
getLinhaFromIndice(48, Peca, R) :- atom_concat('2   ', Peca, R).
getLinhaFromIndice(56, Peca, R) :- atom_concat('1   ', Peca, R).
getLinhaFromIndice(_, Peca, Peca).

getColunas(R) :- atomic_list_concat(['     a', '   b', '   c', '   d', '   e', '   f', '   g', '   h'], ' ', R).