function d_k = decrypt_Affine(c, k)
    % k = (a, b)
    a = k(1);
    b = k(2);
    [r, s, t] = Euclides_Ext(a, 26);
    if(r == 1)
        a_inv = mod(t, 26);
    c_n = word2num(c);
    d = mod(a_inv .* (c_n - b), 26);
    d_k = num2word(d);
end