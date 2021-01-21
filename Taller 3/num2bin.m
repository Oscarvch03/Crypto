function bin = num2bin(num)
    % Transforma un numero decimal a binario
    bin = "";
    while(num > 0)
        b = mod(num, 2);
        bin = bin + num2str(b);
        num = floor(num/2);
    end
    bin = reverse(bin);
    bin = split(bin, "");
    bin = bin(2:length(bin)-1);
end