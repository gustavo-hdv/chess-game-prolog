%Implementar um sistema de cores melhor, exemplo:
%branco(peao1).
%preto(peao1).

tabuleiro(T) :- T = [torreP1, cavaloP1, bispoP1,  damaP,   reiP, bispoP2, cavaloP2, torreP2,
                      peaoP1,   peaoP2,  peaoP3, peaoP4, peaoP5,  peaoP6,   peaoP7,  peaoP8,
                       vazio,    vazio,   vazio,  vazio,  vazio,   vazio,    vazio,   vazio,
                       vazio,    vazio,   vazio,  vazio,  vazio,   vazio,    vazio,   vazio,
                       vazio,    vazio,   vazio,  vazio,  vazio,   vazio,    vazio,   vazio,
                       vazio,    vazio,   vazio,  vazio,  vazio,   vazio,    vazio,   vazio,
                      peaoB1,   peaoB2,  peaoB3, peaoB4, peaoB5,  peaoB6,   peaoB7,  peaoB8,
                     torreB1, cavaloB1, bispoB1,   reiB,  damaB, bispoB2, cavaloB2, torreB2].

indicesValidos(R) :- R = [ 0,  1,  2,  3,  4,  5,  6,  7,
                           8,  9, 10, 11, 12, 13, 14, 15,
                          16, 17, 18, 19, 20, 21, 22, 23,
                          24, 25, 26, 27, 28, 29, 30, 31,
                          32, 33, 34, 35, 36, 37, 38, 39,
                          40, 41, 42, 43, 44, 45, 46, 47,
                          48, 49, 50, 51, 52, 53, 54, 55,
                          56, 57, 58, 59, 60, 61, 62, 63].

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

%% Testando o programa
main :-
    read(Indice),
    tabuleiro(Tabuleiro),
    pegaPeca(Indice, Tabuleiro, Peca),
    write(Peca).