function g = armijo(f, x, y, d)
    a = 0.01;
    b = 0.5;
    s = 0.5;
    m = 0;
    g = s;
    x_new = x + g * d(1);
    y_new = y + g * d(2);
   
    while f(x, y) - f(x_new, y_new) < -a * b^m * s * d' *(-d)
        m = m + 1;
        g = s * b^m;
        x_new = x + g * d(1);
        y_new = y + g * d(2);
    end
end
