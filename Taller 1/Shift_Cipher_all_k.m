function out = Shift_Cipher_all_k(c, flag)
    out = [];
    for i = 1:26
        if(flag == "l")
            k = -i;
        else
            k = i;
        end
        aux = Shift_Cipher(c, k);
        out = [out, aux];
    end
end