function bool = Rabin_Miller(m)
    % Test de primalidad
    m_less_1 = m - 1;
    [s, t] = div_by_two(m_less_1); 
    b = randi([2, m - 1]);
    while(Euclides(m, b) ~= 1)
        b = randi([2, m - 1]);
    end
    y = square_and_multiply(b, t, m);
    if(y == 1)
        bool = true;
        return
    else
        for i = 0:s-1
            if(mod(y+1, m) == 0)
                bool = true;
                return
            else
                y = mod(y ^ 2, m);
            end
        end
        bool = false;
    end
    
end