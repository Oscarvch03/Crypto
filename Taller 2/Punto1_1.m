% Taller 2 Punto 1.1 

clc

c = 2197;
t0 = 10;
t = [t0];

i = 1;
error = 0.000001;

while(true)
    if(abs((t(i) ^ 3) - c) > error)
        t(i + 1) = (2/3) * t(i) + (1/3) * c / (t(i) ^ 2);
        i = i + 1;
    else
        sqrt_c = t(i);
        break
    end
end

i
sqrt_c
t