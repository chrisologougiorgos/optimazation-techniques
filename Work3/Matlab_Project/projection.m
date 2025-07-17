function y = projection(f_grad, x, x_lower_limits, x_upper_limits, s)
    y = zeros(1, 2);
    
    z = x - s * f_grad(x(1), x(2)); 

    if z(1) <= x_lower_limits(1)
        y(1) = x_lower_limits(1);
    elseif z(1) >= x_upper_limits(1)
        y(1) = x_upper_limits(1);
    else
        y(1) = z(1);
    end

    if z(2) <= x_lower_limits(2)
        y(2) = x_lower_limits(2);
    elseif z(2) >= x_upper_limits(2)
        y(2) = x_upper_limits(2);
    else
        y(2) = z(2);
    end

end