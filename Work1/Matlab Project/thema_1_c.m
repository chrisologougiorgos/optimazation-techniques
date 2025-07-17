clc, clearvars, close all;

l = [0.0025, 0.005, 0.01];
e = 0.001;
a1 = -1;
b1 = 3;

figure;
for i=1:length(l)
    [a_values,b_values,k_values] = dixotomhsh(@f1,a1,b1,e,l(i));
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
    [a_values,b_values,k_values] = dixotomhsh(@f2,a1,b1,e,l(i));
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
    [a_values,b_values,k_values] = dixotomhsh(@f3,a1,b1,e,l(i));
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


function [a_values, b_values, k_values] = dixotomhsh(f, a1, b1, e, l)
    k=1;
    a = a1;
    b = b1;
    a_values = [];
    b_values = [];
    k_values = [];

    a_values(end+1) = a;
    b_values(end+1) = b;
    k_values(end+1) = k;

        while b-a > l 
            x1 = (a+b)/2 - e;
            x2 = (a+b)/2 + e;
            
            if f(x1) < f(x2)
                a = a;
                b = x2;
            else
               a = x1;
               b = b;
            end
            k = k + 1;

            a_values(end+1) = a;
            b_values(end+1) = b;
            k_values(end+1) = k;
        end
end