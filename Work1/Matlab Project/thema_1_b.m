clc, clearvars, close all;

l = 0.003:0.001:0.019;
e = 0.001;
a1 = -1;
b1 = 3;

k1 = dixotomhsh(@f2, a1, b1, e, l);
k2 = dixotomhsh(@f2, a1, b1, e, l);
k3 = dixotomhsh(@f2, a1, b1, e, l);


figure;
bar(2*k1-2);
set(gca, 'XTick', 1:5:length(l));  
set(gca, 'XTickLabel', l(1:5:end));
xlabel('Τιμές l');
ylabel('Συνολικοί Υπολογισμοί της f1(x)');
title(['Ραβδόγραμμα συνολικών αριθμών υπολογισμού της f για διάφορες τιμές l, f1']);
legend('e = 0.001' ,'Location', 'northeast');
legend show;
grid on;

figure;
bar(2*k2-2);
set(gca, 'XTick', 1:5:length(l));  
set(gca, 'XTickLabel', l(1:5:end));
xlabel('Τιμές l');
ylabel('Συνολικοί Υπολογισμοί της f2(x)');
title(['Ραβδόγραμμα συνολικών αριθμών υπολογισμού της f για διάφορες τιμές l, f2']);
legend('e = 0.001' ,'Location', 'northeast');
legend show;
grid on;

figure;
bar(2*k3-2);
set(gca, 'XTick', 1:5:length(l));  
set(gca, 'XTickLabel', l(1:5:end));
xlabel('Τιμές l');
ylabel('Συνολικοί Υπολογισμοί της f3(x)');
title(['Ραβδόγραμμα συνολικών αριθμών υπολογισμού της f για διάφορες τιμές l, f3']);
legend('e = 0.001' ,'Location', 'northeast');
legend show;
grid on;


function k = dixotomhsh(f, a1, b1, e, l)
    k = zeros(1, length(l));
    for i = 1:length(l)
        a = a1;
        b = b1;
        k(i) = 1;
        while b-a > l(i) 
            x1 = (a+b)/2 - e;
            x2 = (a+b)/2 + e;
            
            if f(x1) < f(x2)
                a = a;
                b = x2;
            else
               a = x1;
               b = b;
            end
            k(i) = k(i) + 1;
        end
    end
end