clc, clearvars, close all;

l = 0.01;
e = 0.001:0.0001:0.0049;
a1 = -1;
b1 = 3;

k1 = dixotomhsh(@f1, a1, b1, e, l);
k2 = dixotomhsh(@f2, a1, b1, e, l);
k3 = dixotomhsh(@f3, a1, b1, e, l);

figure;
bar(2*k1-2);
set(gca, 'XTick', 1:5:length(e));  
set(gca, 'XTickLabel', e(1:5:end));
xlabel('Τιμές ε');
ylabel('Συνολικοί Υπολογισμοί της f1(x)');
title(['Ραβδόγραμμα συνολικών αριθμών υπολογισμού της f για διάφορες τιμές e, f1']);
legend('l = 0.01' ,'Location', 'northwest');
legend show;
grid on;

figure;
bar(2*k2-2);
set(gca, 'XTick', 1:5:length(e));  
set(gca, 'XTickLabel', e(1:5:end));
xlabel('Τιμές ε');
ylabel('Συνολικοί Υπολογισμοί της f2(x)');
title(['Ραβδόγραμμα συνολικών αριθμών υπολογισμού της f για διάφορες τιμές e, f2']);
legend('l = 0.01' ,'Location', 'northwest');
legend show;
grid on;

figure;
bar(2*k3-2);
set(gca, 'XTick', 1:5:length(e));  
set(gca, 'XTickLabel', e(1:5:end));
xlabel('Τιμές ε');
ylabel('Συνολικοί Υπολογισμοί της f3(x)');
title(['Ραβδόγραμμα συνολικών αριθμών υπολογισμού της f για διάφορες τιμές e, f3']);
legend('l = 0.01' ,'Location', 'northwest');
legend show;
grid on;


function k = dixotomhsh(f, a1, b1, e, l)
    k = zeros(1,length(e));
    for i = 1:length(e)
        a = a1;
        b = b1;
        k(i) = 1;
        while b-a > l 
            x1 = (a+b)/2 - e(i);
            x2 = (a+b)/2 + e(i);
            
            if f(x1) < f(x2)
                a = a;
                b = x2;
            else
               a = x1;
               b = b;
            end
            k(i) = k(i) + 1;
        end
        disp(a);
        disp(b);
    end
end