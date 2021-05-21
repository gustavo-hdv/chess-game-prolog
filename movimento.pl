trocaPeca([], 64, _, _, _, _, []).
trocaPeca([X|Y], C, PecaO, PecaD, IndiceOrigem, IndiceDestino, [XR|YR]) :-
  C < 64,
  \+ verificaExistePecaMesmaCor([X|Y], IndiceOrigem, IndiceDestino),
  M is C + 1,
  vazio(V),
  (C == IndiceOrigem -> XR = V;
  C == IndiceDestino -> XR = PecaO;
  XR = X),
  trocaPeca(Y, M, PecaO, PecaD, IndiceOrigem, IndiceDestino, YR).


verificaExistePecaMesmaCor(Tabuleiro, IndiceOrigem, IndiceDestino) :-
  pegaPeca(IndiceOrigem, Tabuleiro, PecaO),
  pegaPeca(IndiceDestino, Tabuleiro, PecaD),
  (branco(PecaO) -> branco(PecaD);
  preto(PecaO) -> preto(PecaD)).

troca(Tabuleiro, IndiceOrigem, IndiceDestino, TabuleiroR) :-
  pegaPeca(IndiceOrigem, Tabuleiro, PecaO),
  pegaPeca(IndiceDestino, Tabuleiro, PecaD),
  trocaPeca(Tabuleiro, 0, PecaO, PecaD, IndiceOrigem, IndiceDestino, TabuleiroR).