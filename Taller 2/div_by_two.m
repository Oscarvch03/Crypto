function [s, t] = div_by_two(m_less_1)
    % Encontrar s y t tq m_less_1 = t*2^{s}
    s = 0;
    while(mod(m_less_1, 2) == 0)
        s = s + 1;
        m_less_1 = m_less_1 / 2;
    end
    t = m_less_1;
end