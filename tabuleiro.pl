tabuleiro(T) :- T = ['\u2656','\u2658', '\u2657','\u2655', '\u2654','\u2657', '\u2658', '\u2656',
                     '\u2659', '\u2659','\u2659', '\u2659', '\u2659', '\u2659', '\u2659', '\u2659',
                      '\u25A1','\u25A1','\u25A1', '\u25A1', '\u25A1', '\u25A1', '\u25A1', '\u25A1',
                      '\u25A1','\u25A1','\u25A1', '\u25A1', '\u25A1', '\u25A1', '\u25A1', '\u25A1',
                      '\u25A1','\u25A1','\u25A1', '\u25A1', '\u25A1', '\u25A1', '\u25A1', '\u25A1',
                     '\u25A1','\u25A1','\u25A1', '\u25A1', '\u25A1', '\u25A1', '\u25A1', '\u25A1',
                      '\u265F', '\u265F', '\u265F', '\u265F', '\u265F', '\u265F', '\u265F', '\u265F',
                     '\u265C', '\u265E', '\u265D', '\u265B', '\u265A','\u265D', '\u265E', '\u265C'].

tabuleiroComCoords(T) :- T = [a8, b8, c8, d8, e8, f8, g8, h8,
                              a7, b7, c7, d7, e7, f7, g7, h7,
                              a6, b6, c6, d6, e6, f6, g6, h6,
                              a5, b5, c5, d5, e5, f5, g5, h5,
                              a4, b4, c4, d4, e4, f4, g4, h4,
                              a3, b3, c3, d3, e3, f3, g3, h3,
                              a2, b2, c2, d2, e2, f2, g2, h2,
                              a1, b1, c1, d1, e1, f1, g1, h1].

%torreP = tP
%cavaloP = cP
%bispoP = bP
%damaP = dP
%reiP = rP
%peaoP = pP

%torreB = tB
%cavaloB = cB
%bispoB = bB
%damaB = dB
%reiB = rB
%peaoB = pB


indicesValidos(I) :- I = [  0,  1,  2,  3,  4,  5,  6,  7,
                            8,  9, 10, 11, 12, 13, 14, 15,
                           16, 17, 18, 19, 20, 21, 22, 23,
                           24, 25, 26, 27, 28, 29, 30, 31,
                           32, 33, 34, 35, 36, 37, 38, 39,
                           40, 41, 42, 43, 44, 45, 46, 47,
                           48, 49, 50, 51, 52, 53, 54, 55,
                           56, 57, 58, 59, 60, 61, 62, 63].
