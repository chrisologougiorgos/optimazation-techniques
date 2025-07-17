function [a, b] = dixotomhsh(f, x, y, d)
    a = 0;
    b = 1;
    l = 0.01;
    e = 0.001;
    while b - a > l
        x1 = (a+b)/2 - e;
        x2 = (a+b)/2 + e;

        if f(x + x1 * d(1), y + x1 * d(2)) < f(x + x2 * d(1), y + x2 * d(2))
                a = a;
                b = x2;
        else
               a = x1;
               b = b;
        end
    end
end