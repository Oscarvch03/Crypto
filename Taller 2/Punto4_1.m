% Taller 2 Punto 4.1

clc

n0 = 15;
nf = 43155;

cont = 0;
tic
for i = n0:2:nf
    bool = es_primo(i);
    if(bool)
        cont = cont + 1;
    end
end
toc

cont_aprox = floor((nf / log(nf))) - 6

cont