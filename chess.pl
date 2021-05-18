:- [tabuleiro].
:- [tipos].

pegaPeca(Indice, Tabuleiro, Peca) :- nth0(Indice, Tabuleiro, Peca).
%% remove a peça da posição passada e adiciona "vazio" no lugar.
%% removePeca(Indice, Tabuleiro, NovoTabuleiro) :- 

%% move uma peça para uma determinada posição, precisa verificar:
%% Se já existe uma peça da mesma cor naquela posição (sugerir mudança para facilitar a implementação);
%% Se ela vai capturar uma outra peça;
%% Checar se a peça segue suas regras;
%% Checar se com o movimento de tal peça, o rei vai ficar em xeque
%% Etc...
%% movePeca(tabuleiro, indice, peca, novoTabuleiro) :-

printTabuleiro([], C, StringTabuleiro) :- C =:= 64, write(StringTabuleiro), nl.
printTabuleiro([X|Y], C, StringTabuleiro) :- M is C + 1, (C mod 8 =:= 0 -> write(StringTabuleiro), nl, espacamento(X, C, V), printTabuleiro(Y, M, V);
                                            atom_concat(StringTabuleiro, X, R), espacamento(R, C, Z), printTabuleiro(Y, M, Z)).

printIndices([], C, StringIndices) :- C =:= 64, write(StringIndices), nl.
printIndices([X|Y], C, StringIndices) :- M is C + 1, (C mod 8 =:= 0 -> write(StringIndices), nl, espacamentoIndices(X, C, V), printIndices(Y, M, V);
                                            atom_concat(StringIndices, X, R), espacamentoIndices(R, C, Z), printIndices(Y, M, Z)).

espacamento(String, C, R) :- atom_concat(String, "   ", R).
espacamentoIndices(String, C, R) :- C < 10 -> atom_concat(String, "    ", R) ; atom_concat(String, "   ", R).

%% Testando o programa
%%main :-
    %%read(Indice),
    %%tabuleiro(Tabuleiro),
    %%pegaPeca(Indice, Tabuleiro, Peca).
    %%branco(Peca) -> write("A peça é branca") ; write("A peça é preta"),