function res = Euclides(a, b)
    % Calcula el gcd(a, b)
    if(a < b)
        num1 = b;
        num2 = a;
    else
        num1 = a;
        num2 = b;
    end
    
    r(1) = num1;
    r(2) = num2;
    
    i = 2;
    while(r(i) ~= 0)
        r(i + 1) = mod(r(i-1), r(i));
        i = i + 1;
    end
    res = r(i - 1);
end