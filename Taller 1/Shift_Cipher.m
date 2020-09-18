function out = Shift_Cipher(c, k)
    num = word2num(c);
    aux = mod(num + k, 26);
    out = num2word(aux);
end