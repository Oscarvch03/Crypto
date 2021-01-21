% Taller 3 Punto 2 
% (8, 15) threshold

clc

X = [3, 7, 9, 11, 15, 21, 26, 32];
Y = [43, 50, 44, 36, 56, 40, 21, 40];
p = 61;

f = Polinomio_Lagrange(X, Y);
pretty(f)
f_0 = subs(f, 'x', 0)

num = 3624440509;
den = 8617640;
[r, s, t] = Euclides_Ext(den, p);
den_inv = mod(s, p);

k = mod(mod(num, p) * den_inv, p)

