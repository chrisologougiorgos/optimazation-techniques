clc, clearvars, close all;

l = 0.003:0.001:0.019;
a1 = -1;
b1 = 3;
g = 0.618;
counter_f1 = zeros(1,length(l));
counter_f2 = zeros(1,length(l));
counter_f3 = zeros(1,length(l));

for i=1:length(l)
    x1 = a1 + (1-g) * (b1-a1);
    x2 = a1 + g * (b1-a1);

    f1_x1 = f1(x1);
    f1_x2 = f1(x2);
    counter_f1(i) = 2;
    counter_f1(i) = xrysh_tomh(@f1, a1, b1, x1, x2, g, l(i), f1_x1, f1_x2, counter_f1(i));

    f2_x1 = f2(x1);
    f2_x2 = f2(x2);
    counter_f2(i) = 2;
    counter_f2(i) = xrysh_tomh(@f2, a1, b1, x1, x2, g, l(i), f2_x1, f2_x2, counter_f2(i));

    f3_x1 = f3(x1);
    f3_x2 = f3(x2);
    counter_f3(i) = 2;
    counter_f3(i) = xrysh_tomh(@f3, a1, b1, x1, x2, g, l(i), f3_x1, f3_x2, counter_f3(i));
end

figure;
bar(counter_f1);
set(gca, 'XTick', 1:5:length(l));  
set(gca, 'XTickLabel', l(1:5:end)); 
xlabel('Τιμές l');
ylabel('Συνολικοί Υπολογισμοί της f1(x)');
title(['Ραβδόγραμμα συνολικών αριθμών υπολογισμού της f για διάφορες τιμές l, f1']);
grid on;

figure;
bar(counter_f2);
set(gca, 'XTick', 1:5:length(l));  
set(gca, 'XTickLabel', l(1:5:end)); 
xlabel('Τιμές l');
ylabel('Συνολικοί Υπολογισμοί της f2(x)');
title(['Ραβδόγραμμα συνολικών αριθμών υπολογισμού της f για διάφορες τιμές l, f2']);
grid on;

figure;
bar(counter_f3);
set(gca, 'XTick', 1:5:length(l));  
set(gca, 'XTickLabel', l(1:5:end)); 
xlabel('Τιμές l');
ylabel('Συνολικοί Υπολογισμοί της f3(x)');
title(['Ραβδόγραμμα συνολικών αριθμών υπολογισμού της f για διάφορες τιμές l, f3']);
grid on;


function counter = xrysh_tomh(f, a, b, x1, x2, g, l, f_x1, f_x2, counter)
 disp(['Current interval: [', num2str(a), ', ', num2str(b), ']']);

        if b-a > l
            if f_x1 > f_x2
                a = x1;
                b = b;
                x1 = x2;
                x2 = a + g * (b-a);
                f_x1 = f_x2;
                f_x2 = f(x2);
                counter = counter + 1;
                counter = xrysh_tomh(f, a, b, x1, x2, g, l, f_x1, f_x2, counter);
            else
                a = a;
                b = x2;
                x2 = x1;
                x1 = a + (1-g) * (b-a);
                f_x2 = f_x1;
                f_x1 = f(x1);
                counter =  counter + 1;
                counter = xrysh_tomh(f, a, b, x1, x2, g, l, f_x1, f_x2, counter);
            end
        end
end
         
    



