function z = f_hessian(x, y)
    a = 20*x^3*exp(-x^2 - y^2) - 22*x^5*exp(-x^2 - y^2) + 4*x^7*exp(-x^2 - y^2);
    b = 2*x^4*(2*x^2-5)*y*exp(-x^2 - y^2);
    c = b;
    d = -2*x^5*exp(-x^2 - y^2) + 4*x^5*y^2*exp(-x^2 - y^2);

    z = [a, b;
         c, d];
end