% Taller 3 Punto 1
% (4, 5) threshold

clc
syms x

% Solo tomamos 4 puntos
X = [1, 2, 3, 4]; % , 5];
Y = [9, 1, 1, 5]; % , 9];
p = 11;

%% Parte 1

f = Polinomio_Lagrange(X, Y);
pretty(f)
f_mod_p = 3*x^3 + 8*x^2 + 2*x + 7;
pretty(f_mod_p)


%% Parte 2

f_0 = subs(f_mod_p, 'x', 0)

k = mod(f_0, p)
