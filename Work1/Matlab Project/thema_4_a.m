clc, clearvars, close all;

l = 0.003:0.001:0.019;
counter_f1_der = zeros(1,length(l));
counter_f2_der = zeros(1,length(l));
counter_f3_der = zeros(1,length(l));

for i=1:length(l)
    a = -1;
    b = 3;
    
    n = 0;
    while (1/2)^n > l(i)/(b-a)
        n = n + 1;
    end
    
    k = 1;
    x = 0;
    
    while true
        x = (a + b) / 2;
        f1_der = f1_derivative(x);
        counter_f1_der(i) = counter_f1_der(i) + 1;
    
        if f1_der == 0
            break;
        elseif f1_der > 0
            a = a;
            b = x;
            if k == n
                break;
            else
                k = k + 1;
            end
        else
            a = x;
            b = b;
            if k == n
                break;
            else
                k = k + 1;
            end
        end
    end
end

for i=1:length(l)
    a = -1;
    b = 3;
    
    n = 0;
    while (1/2)^n > l(i)/(b-a)
        n = n + 1;
    end
    
    k = 1;
    x = 0;
    
    while true
        x = (a + b) / 2;
        f2_der = f2_derivative(x);
        counter_f2_der(i) = counter_f2_der(i) + 1;
    
        if f2_der == 0
            break;
        elseif f2_der > 0
            a = a;
            b = x;
            if k == n
                break;
            else
                k = k + 1;
            end
        else
            a = x;
            b = b;
            if k == n
                break;
            else
                k = k + 1;
            end
        end
    end
end

for i=1:length(l)
    a = -1;
    b = 3;
    
    n = 0;
    while (1/2)^n > l(i)/(b-a)
        n = n + 1;
    end
    
    k = 1;
    x = 0;
    
    while true
        x = (a + b) / 2;
        f3_der = f3_derivative(x);
        counter_f3_der(i) = counter_f3_der(i) + 1;
    
        if f3_der == 0
            break;
        elseif f3_der > 0
            a = a;
            b = x;
            if k == n
                break;
            else
                k = k + 1;
            end
        else
            a = x;
            b = b;
            if k == n
                break;
            else
                k = k + 1;
            end
        end
    end
end

figure;
bar(counter_f1_der);
set(gca, 'XTick', 1:5:length(l));  
set(gca, 'XTickLabel', l(1:5:end)); 
xlabel('Τιμές l');
ylabel('Συνολικοί Υπολογισμοί της f1derivative(x)');
title(['Ραβδόγραμμα αριθμών υπολογισμού της παραγώγου για διάφορες τιμές l, f1']);
grid on;

figure;
bar(counter_f2_der);
set(gca, 'XTick', 1:5:length(l));  
set(gca, 'XTickLabel', l(1:5:end)); 
xlabel('Τιμές l');
ylabel('Συνολικοί Υπολογισμοί της f2derivative(x)');
title(['Ραβδόγραμμα αριθμών υπολογισμού της παραγώγου για διάφορες τιμές l, f2']);
grid on;

figure;
bar(counter_f3_der);
set(gca, 'XTick', 1:5:length(l));  
set(gca, 'XTickLabel', l(1:5:end)); 
xlabel('Τιμές l');
ylabel('Συνολικοί Υπολογισμοί της f3derivative(x)');
title(['Ραβδόγραμμα αριθμών υπολογισμού της παραγώγου για διάφορες τιμές l, f3']);
grid on;
      
