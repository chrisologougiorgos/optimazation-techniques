clc, clearvars, close all;

e = 0.001;

% Όρισμος σημέιου έναρξης
x1 = 5;
x2 = -9;

k = 1;
f_values = [];
k_values = [];


while norm(f_grad(x1, x2)') >= e
    disp(['Iteration ', num2str(k), ': f(x_k) = ', num2str(f(x1, x2))]);
    f_values(end + 1) = f(x1, x2);
    k_values(end + 1) = k;
    d = -f_grad(x1,x2);
    
    % Σταθερο βήμα
    g = 0.1;

    x1 = x1 + g * d(1);
    x2 = x2 + g * d(2);
    k = k + 1;
 end

figure;
plot(k_values, f_values);
xlabel('Επαναλήψεις k');
ylabel('Τιμή συνάρτησης f');