tabuleiro(T) :- T = [tP, cP, bP, dP, rP, bP, cP, tP,
                     pP, pP, pP, pP, pP, pP, pP, pP,
                     vZ, vZ, vZ, vZ, vZ, vZ, vZ, vZ,
                     vZ, vZ, vZ, vZ, vZ, vZ, vZ, vZ,
                     vZ, vZ, vZ, vZ, vZ, vZ, vZ, vZ,
                     vZ, vZ, vZ, vZ, vZ, vZ, vZ, vZ,
                     pB, pB, pB, pB, pB, pB, pB, pB,
                     tB, cB, bB, dB, rB, bB, cB, tB].

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