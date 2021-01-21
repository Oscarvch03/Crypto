% Taller 2 Punto 4.2

function cont = Punto4_2(k, m0, mf)
    % Generar numeros y testear primalidad Miller-Rabin
    cont = 0;
    for i = m0:2:mf
        for j = 1:k
            bool = Rabin_Miller(i);
            if(bool == false)
                break;
            end
            if(j == k)
                cont = cont + 1;
            end
        end
    end
end