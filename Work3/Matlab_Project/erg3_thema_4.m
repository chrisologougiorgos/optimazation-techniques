clc, clearvars, close all;

e = 0.01;

x = [8, -10];
x_lower_limits = [-10, -8];
x_upper_limits = [5, 12];

s = 0.1;
g = 0.2;

k = 1;
f_values = [];
k_values = [];

x_bar = projection(@f_grad, x, x_lower_limits, x_upper_limits, s);


while norm(f_grad(x(1), x(2))') >= e
    disp(['Iteration ', num2str(k), ': f(x_k) = ', num2str(f(x(1), x(2)))]);
    f_values(end + 1) = f(x(1), x(2));
    k_values(end + 1) = k;

    x(1) = x(1) + g * (x_bar(1) - x(1));
    x(2) = x(2) + g * (x_bar(2) - x(2));
    
    x_bar = projection(@f_grad, x, x_lower_limits, x_upper_limits, s);

    k = k + 1;
end

figure;
plot(k_values, f_values);
xlabel('Επαναλήψεις k');
ylabel('Τιμή συνάρτησης f');