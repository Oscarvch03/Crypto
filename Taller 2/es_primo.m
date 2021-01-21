function bool = es_primo(n)
    % Retorna 1 si n es primo, 0 dlc
    cont = 0;
    for i = 1:n
        if(mod(n, i) == 0)
            cont = cont + 1;
        end
    end
    if(cont ~= 2)
        bool = false;
    else
        bool = true;
    end
end