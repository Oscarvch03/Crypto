function [r, s, t] = Euclides_Ext(a, b)
    if(a < b)
        num1 = b;
        num2 = a;
    else
        num1 = a;
        num2 = b;
    end
    
    r(1) = num1;
    r(2) = num2;
    
    s(1) = 1;
    s(2) = 0;
    
    t(1) = 0;
    t(2) = 1;
    
    i = 2;
    while(r(i) ~= 0)
        q_i = floor(r(i - 1) / r(i));
        r(i + 1) = mod(r(i - 1), r(i));
        s(i + 1) = s(i - 1) - (q_i * s(i));
        t(i + 1) = t(i - 1) - (q_i * t(i));
        i= i + 1;
    end
    r = r(i - 1); 
    s = s(i - 1); 
    t = t(i - 1);
end