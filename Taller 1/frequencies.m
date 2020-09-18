function F = frequencies(word, flag)
    % word es un vector de caracteres
    if(flag == "l")
        Alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
    elseif(flag == "n")
        Alphabet = 0:1:25;
    end
    F = zeros(1, length(Alphabet));
    for i = 1:length(Alphabet)
        letra = Alphabet(i);
        for j = 1:length(word)
            if(word(j) == letra)
                F(i) = F(i) + 1;
            end
        end
    end
end