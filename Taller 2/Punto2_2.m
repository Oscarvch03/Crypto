% Taller 2 Punto 2.2 

clc
format long

n = 23359211;
e_A = 5;
e_B = 7;
c_A = 2257692;
c_B = 11922174;

[r1, s1, t1] = Euclides_Ext(e_B, e_A);
e_A_inv = mod(t1, e_B);

a = e_A_inv % Es 3
b = (a * e_A - 1) / e_B

c_A_elev_a = mod(mod(c_A ^ 2, n) * c_A, n) % Se calcula asi porque matlab no 
                                           % trabaja bien con numeros grandes
                                           % Tiene error. (Verificado con
                                           % Python).
                                        
c_B_elev_b = mod(c_B ^ b, n);
[r2, s2, t2] = Euclides_Ext(n, c_B_elev_b);
c_B_elev_b_inv = mod(t2, n)

m = mod(c_A_elev_a * c_B_elev_b_inv, n) 