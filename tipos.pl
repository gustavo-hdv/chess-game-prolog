branco(pB, 'Peão branco').
branco(tB, 'Torre branca').
branco(cB, 'Cavalo branco').
branco(bB, 'Bispo branco').
branco(dB, 'Dama branca').
branco(rB, 'Rei branco').

preto(pP, 'Peão preto').
preto(tP, 'Torre preta').
preto(cP, 'Cavalo preto').
preto(bP, 'Bispo preto').
preto(dP, 'Dama preta').
preto(rP, 'Rei preto').

vazio(vZ, 'Espaço vazio').

pecasBrancas(R) :- R = [pB, tB, cB, bB, dB, rB].
pecasPretas(R) :- R = [pP, tP, cP, bP, dP, rP].