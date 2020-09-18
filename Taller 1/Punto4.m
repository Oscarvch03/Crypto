% Taller 1 Punto 4
clc

%% Codigo

c = "IEHAFMLYYNNOXAAYLJENRLROVNLVIAGOZMOYESEFELEHNTLXAVDPYTUECPLVVPOWUOXJOHMLJKAOHMYGHPYAZEZQAANLMEYLPPAADESIFMLTDRNDSEYIGPDJIESNBOESEETSZUTHEEHNNEZLBVPLNQBPWOIEOMYZE";
c_v_num = word2num(c);
Pc = partir(c, 5);

%% Info del lenguaje Ingles

I_engl = 0.065;
dist_engl = [0.082, 0.015, 0.028, 0.043, 0.127, 0.022, 0.020, 0.061, 0.070, 0.002, 0.008, 0.040, 0.024, 0.067, 0.075, 0.019, 0.001, 0.060, 0.063, 0.091, 0.028, 0.010, 0.023, 0.001, 0.020, 0.001];

%% Calcular los indices de coincidencia para cada particion de i filas

I_C = [];

n = floor(sqrt(length(c_v_num)));

for i = 1:n
    f = mod(length(c_v_num), i);
    c_aux = c_v_num;
    
    if(f ~= 0)
        k = i - f;
        for j = 1:k
            c_aux = [c_aux, NaN];
        end
    else
        k = 0;
    end
    
    j = length(c_aux) / i;
    
    T = reshape(c_aux, [i, j]);
    M = reshape(T', [length(c_v_num) + k, 1]);
    M_l = num2word(M');
    
    P = partir(M_l, j);
    
    I_i = [];
    
    for l = 1:length(P)
        fila_l = P(l);
        fila_l = split(fila_l, "");
        fila_l = fila_l(2:1:length(fila_l) - 1);
        F_l= frequencies(fila_l', "l");
        
        I_l = 0;
        for m = 1:26
            F_m = F_l(m) * (F_l(m) - 1);
            div = length(fila_l) * (length(fila_l) - 1);
            coc = F_m / div;
            I_l = I_l + coc;
        end
        
        I_i = [I_i, I_l];
        I_l = 0;
    end
    I_C = [I_C, mean(I_i)];
    disp("Indices de Coincidencia para " + num2str(i) + " filas: ")
    disp(I_i)
    
end


% I_C = abs(I_C - I_engl);

%% Descifrar con el periodo j que tenga mas sentido

period = 5

f = mod(length(c_v_num), period);
c_aux = c_v_num;
if(f ~= 0)
    k = period - f;
    for j = 1:k
        c_aux = [c_aux, NaN];
    end
else
    k = 0;
end
j = length(c_aux) / period;

T = reshape(c_aux, [period, j]);
M = reshape(T', [length(c_v_num) + k, 1]);
M_l = num2word(M');

P = partir(M_l, j);

key = [];
for p = 1:length(P)
    fila_p = P(p);
    all_shift_p = Shift_Cipher_all_k(fila_p, "l");
    diff_p = [];
    for q = 1:length(all_shift_p)
        fila_p_word_spl = split(all_shift_p(q), "");
        fila_p_word_spl = fila_p_word_spl(2:1:length(fila_p_word_spl) - 1);
        F_q = frequencies(fila_p_word_spl', "l");
        dist_q = F_q ./ length(fila_p_word_spl);
        diff_d = sum((dist_q - dist_engl) .^ 2);
        diff_p(q) = diff_d;
    end
    [diff_min, key_p] = min(diff_p); 
    key(p) = mod(key_p, 26);
end

key
key_w = num2word(key)
% key = [0, 11, 11, 0, 13];

KEY = [];
for i = 1:ceil(length(c_v_num) / length(key))
    KEY = [KEY, key];
end
KEY = KEY(1:strlength(c));

m = num2word(mod(c_v_num - KEY, 26))