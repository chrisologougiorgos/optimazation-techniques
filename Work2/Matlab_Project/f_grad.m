function z = f_grad(x, y)
    z = [exp(-(x^2 + y^2)) * (5 * x^4 - 2 * x^6), -2 * y * x^5 * exp(-(x^2 + y^2))];
end