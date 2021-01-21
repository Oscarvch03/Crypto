clc

p = 104723;
q = (p-1)/2;
n = 3246413;


%% Parte 1

prims = [];
cont = 0;
for i = 1:(p-1)
   alp_el_cuad = i ^ 2;
   alp_el_q = square_and_multiply(i, q, p);
   if(mod(alp_el_cuad, p) ~= 1 &&  alp_el_q ~= 1)
      prims(cont + 1) = i;
      cont = cont + 1;
      if(cont == 5)
          break;
      end
   end
end

prims
alpha = prims(2)


%% Parte 2

a_o = 7;
m_o = 4563; % 7913;
k = 2021;

% Hash Function
H = @(m) square_and_multiply(10, m, p); 

x = H(m_o);
gamma = square_and_multiply(alpha, k, p);
[r, s, t] = Euclides_Ext(k, p - 1);
k_inv = mod(t, p - 1);
delta = mod((x - a_o * gamma) * k_inv, p - 1);


%% Parte 3

beta = square_and_multiply(alpha, a_o, p);
beta_el_gamma = square_and_multiply(beta, gamma, p);
gamma_el_delta = square_and_multiply(gamma, delta, p);
product = mod(beta_el_gamma * gamma_el_delta, p)
alpha_el_x = square_and_multiply(alpha, x, p)
valid = product == alpha_el_x

