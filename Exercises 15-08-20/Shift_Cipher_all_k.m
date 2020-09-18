function out = Shift_Cipher_all_k(c)
    out = [];
    for k = 1:25
        aux = Shift_Cipher(c, k);
        out = [out, aux];
    end
end