clc, clearvars, close all;

l = [0.0025, 0.005, 0.01]; 
a1 = -1;
b1 = 3;
g = 0.618;

figure;
for i=1:length(l)
    k = 1;
    x1 = a1 + (1-g) * (b1-a1);
    x2 = a1 + g * (b1-a1);
    f_x1 = f1(x1);
    f_x2 = f1(x2);

    a_values = [];
    b_values = [];
    k_values = [];
    a_values(end+1) = a1;
    b_values(end+1) = b1;
    k_values(end+1) = 1;

    [k, a_values, b_values, k_values] = xrysh_tomh(@f1, a1, b1, x1, x2, g, l(i), f_x1, f_x2, k, a_values, b_values, k_values);
    
    
    plot(k_values, a_values, '-o', 'MarkerSize', 10, 'DisplayName', ['a_k (l = ' num2str(l(i)) ')']);
    hold on;
    plot(k_values, b_values, '-*', 'MarkerSize', 10, 'DisplayName', ['b_k (l = ' num2str(l(i)) ')']);
    hold on;
    xlabel('Επαναλήψεις k');
    ylabel('Τιμές άκρων');
    legend show;
    legend('Location', 'best');
    title(['Γραφικές Παραστάσεις Άκρων για διάφορες τιμές του l, f1']);
end

figure;
for i=1:length(l)
    k = 1;
    x1 = a1 + (1-g) * (b1-a1);
    x2 = a1 + g * (b1-a1);
    f_x1 = f2(x1);
    f_x2 = f2(x2);

    a_values = [];
    b_values = [];
    k_values = [];
    a_values(end+1) = a1;
    b_values(end+1) = b1;
    k_values(end+1) = 1;
    
    [k, a_values, b_values, k_values] = xrysh_tomh(@f2, a1, b1, x1, x2, g, l(i), f_x1, f_x2, k, a_values, b_values, k_values);
    
    
    plot(k_values, a_values, '-o', 'MarkerSize', 10, 'DisplayName', ['a_k (l = ' num2str(l(i)) ')']);
    hold on;
    plot(k_values, b_values, '-*', 'MarkerSize', 10, 'DisplayName', ['b_k (l = ' num2str(l(i)) ')']);
    hold on;
    xlabel('Επαναλήψεις k');
    ylabel('Τιμές άκρων');
    legend show;
    legend('Location', 'best');
    title(['Γραφικές Παραστάσεις Άκρων για διάφορες τιμές του l, f2']);
end

figure;
for i=1:length(l)
    k = 1;
    x1 = a1 + (1-g) * (b1-a1);
    x2 = a1 + g * (b1-a1);
    f_x1 = f3(x1);
    f_x2 = f3(x2);

    a_values = [];
    b_values = [];
    k_values = [];
    a_values(end+1) = a1;
    b_values(end+1) = b1;
    k_values(end+1) = 1;
    
    [k, a_values, b_values, k_values] = xrysh_tomh(@f3, a1, b1, x1, x2, g, l(i), f_x1, f_x2, k, a_values, b_values, k_values);
    
    
    plot(k_values, a_values, '-o', 'MarkerSize', 10, 'DisplayName', ['a_k (l = ' num2str(l(i)) ')']);
    hold on;
    plot(k_values, b_values, '-*', 'MarkerSize', 10, 'DisplayName', ['b_k (l = ' num2str(l(i)) ')']);
    hold on;
    xlabel('Επαναλήψεις k');
    ylabel('Τιμές άκρων');
    legend show;
    legend('Location', 'best');
    title(['Γραφικές Παραστάσεις Άκρων για διάφορες τιμές του l, f3']);
end





function [k, a_values, b_values, k_values] = xrysh_tomh(f, a, b, x1, x2, g, l, f_x1, f_x2, k, a_values, b_values, k_values)
 disp(['Current interval: [', num2str(a), ', ', num2str(b), ']']);

        if b-a > l
            if f_x1 > f_x2
                a = x1;
                b = b;
                x1 = x2;
                x2 = a + g * (b-a);
                f_x1 = f_x2;
                f_x2 = f(x2);
            else
                a = a;
                b = x2;
                x2 = x1;
                x1 = a + (1-g) * (b-a);
                f_x2 = f_x1;
                f_x1 = f(x1);
            end
            k =  k + 1;
            k_values(end+1) = k;
            a_values(end+1) = a;
            b_values(end+1) = b;
            [k, a_values, b_values, k_values] = xrysh_tomh(f, a, b, x1, x2, g, l, f_x1, f_x2, k, a_values, b_values, k_values);
        end
end