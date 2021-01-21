function Pol = Polinomio_Lagrange(X, Y)
    % En X y Y están los puntos (Shareholders)
    % Todos los puntos deben ser distintos
    syms x
    L = sym([]);
    
    for j = 1:length(X)
        L(j) = 1;
        for m = 1:length(X)
            if(j ~= m)
               L(j) = L(j) * ((x - X(m)) / (X(j) - X(m)));
            end
        end
    end
    Pol = 0;
    for i = 1:length(Y)
        Pol = Pol + Y(i) * L(i);
    end
    Pol = simplify(Pol);
end