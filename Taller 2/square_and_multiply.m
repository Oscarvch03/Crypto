function w = square_and_multiply(x, y, z)
    % Calcula x^{y} mod(z)
    y_bin = num2bin(y);
    w = 1;
    for i = 0 : length(y_bin)-1
        w = mod(w^2, z);
        if(y_bin(i+1) == '1')
            w = mod(w * x, z);
        end
    end
end