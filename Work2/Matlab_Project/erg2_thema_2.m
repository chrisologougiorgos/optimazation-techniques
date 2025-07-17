clc, clearvars, close all;

e = 0.01;

% Όρισμος σημέιου έναρξης
x = -1;
y = 1;

k = 1;
f_values = [];
k_values = [];


while norm(f_grad(x, y)') >= e
    disp(['Iteration ', num2str(k), ': f(x_k) = ', num2str(f(x, y))]);
    f_values(end + 1) = f(x, y);
    k_values(end + 1) = k;
    d = -f_grad(x,y);
    
    % Σταθερο βήμα
    g = 0.01;

    % Βήμα τέτοιο ώστε να ελαχιστοποιείται η f(x + g * d)
    %[a, b] = dixotomhsh(@f, x, y, d);
    %g = (a + b) / 2;

    % Βήμα με βάση κανόνα Armijo
    %g = armijo(@f, x, y, d);

    x = x + g * d(1);
    y = y + g * d(2);
    k = k + 1;
 end

figure;
plot(k_values, f_values);
xlabel('Επαναλήψεις k');
ylabel('Τιμή συνάρτησης f');





