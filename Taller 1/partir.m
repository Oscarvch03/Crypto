function P = partir(word, cols)
    word_v = split(word, "");
    word_v = word_v(2:length(word_v) - 1);
    P = [];
    str = "";
    for i = 1:length(word_v)
        str = str + word_v(i);
        if(mod(i, cols) == 0)
            P = [P, str];
            str = "";
        else
            if(i == length(word_v))
                P = [P, str];
            end
        end
    end
end