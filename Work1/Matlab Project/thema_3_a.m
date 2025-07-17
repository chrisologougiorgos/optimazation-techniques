clc, clearvars, close all;

l = 0.003:0.001:0.019;
e = 0.00001;
counter_f1 = zeros(1,length(l));
counter_f2 = zeros(1,length(l));
counter_f3 = zeros(1,length(l));



for i = 1:length(l)
    a = -1;
    b = 3;
    n = 0;
    f_n = 0;

    while f_n <= (b - a) / l(i)
        f_n = fibonacci(n);
        n = n + 1;
    end
    
    x1 = a + fibonacci(n-2) * (b - a) / fibonacci(n);
    x2 = a + fibonacci(n-1) * (b - a) / fibonacci(n);
    f_x1 = f3(x1);
    f_x2 = f3(x2);
    counter_f1(i) = counter_f1(i) + 2;
    k = 1;
    
    while true
        if f_x1 > f_x2
            a = x1;
            b = b;
            x1 = x2;
            f_x1 = f_x2;
            x2 = a + fibonacci(n-k-1) * (b - a) / fibonacci(n-k);
    
            if k == n - 2
                x1 = x1;
                x2 = x1 + e;
                if f_x1 > f3(x2)
                    counter_f1(i) = counter_f1(i) + 1;
                    a = x1;
                    b = b;
                    break;
                else
                    counter_f1(i) = counter_f1(i) + 1;
                    a = a;
                    b = x2;
                    break;
                end
            else
                f_x2 = f3(x2);
                counter_f1(i) = counter_f1(i) + 1;
                k = k + 1;
            end
        elseif f_x1 < f_x2
            a = a;
            b = x2;
            x2 = x1;
            f_x2 = f_x1;
            x1 = a + fibonacci(n-k-2) * (b - a) / fibonacci(n-k);
    
            if k == n - 2
                x1 = x1;
                x2 = x1 + e;
                if f_x1 > f3(x2)
                    counter_f1(i) = counter_f1(i) + 1;
                    a = x1;
                    b = b;
                    break;
                else
                    counter_f1(i) = counter_f1(i) + 1;
                    a = a;
                    b = x2;
                    break;
                end
            else
                f_x1 = f3(x1);
                counter_f1(i) = counter_f1(i) + 1;
                k = k + 1;
            end
        end
    end
end

for i = 1:length(l)
    a = -1;
    b = 3;
    n = 0;
    f_n = 0;

    while f_n <= (b - a) / l(i)
        f_n = fibonacci(n);
        disp(f_n)
        n = n + 1;
    end
    
    x1 = a + fibonacci(n-2) * (b - a) / fibonacci(n);
    x2 = a + fibonacci(n-1) * (b - a) / fibonacci(n);
    f_x1 = f3(x1);
    f_x2 = f3(x2);
    counter_f2(i) = counter_f2(i) + 2;
    k = 1;
    
    while true
        if f_x1 > f_x2
            a = x1;
            b = b;
            x1 = x2;
            f_x1 = f_x2;
            x2 = a + fibonacci(n-k-1) * (b - a) / fibonacci(n-k);
    
            if k == n - 2
                x1 = x1;
                x2 = x1 + e;
                if f_x1 > f3(x2)
                    counter_f2(i) = counter_f2(i) + 1;
                    a = x1;
                    b = b;
                    break;
                else
                    counter_f2(i) = counter_f2(i) + 1;
                    a = a;
                    b = x2;
                    break;
                end
            else
                f_x2 = f3(x2);
                counter_f2(i) = counter_f2(i) + 1;
                k = k + 1;
            end
        elseif f_x1 < f_x2
            a = a;
            b = x2;
            x2 = x1;
            f_x2 = f_x1;
            x1 = a + fibonacci(n-k-2) * (b - a) / fibonacci(n-k);
    
            if k == n - 2
                x1 = x1;
                x2 = x1 + e;
                if f_x1 > f3(x2)
                    counter_f2(i) = counter_f2(i) + 1;
                    a = x1;
                    b = b;
                    break;
                else
                    counter_f2(i) = counter_f2(i) + 1;
                    a = a;
                    b = x2;
                    break;
                end
            else
                f_x1 = f3(x1);
                counter_f2(i) = counter_f2(i) + 1;
                k = k + 1;
            end
        end
    end
end

for i = 1:length(l)
    a = -1;
    b = 3;
    n = 0;
    f_n = 0;

    while f_n <= (b - a) / l(i)
        f_n = fibonacci(n);
        disp(f_n)
        n = n + 1;
    end
    
    x1 = a + fibonacci(n-2) * (b - a) / fibonacci(n);
    x2 = a + fibonacci(n-1) * (b - a) / fibonacci(n);
    f_x1 = f3(x1);
    f_x2 = f3(x2);
    counter_f3(i) = counter_f3(i) + 2;
    k = 1;
    
    while true
        if f_x1 > f_x2
            a = x1;
            b = b;
            x1 = x2;
            f_x1 = f_x2;
            x2 = a + fibonacci(n-k-1) * (b - a) / fibonacci(n-k);
    
            if k == n - 2
                x1 = x1;
                x2 = x1 + e;
                if f_x1 > f3(x2)
                    counter_f3(i) = counter_f3(i) + 1;
                    a = x1;
                    b = b;
                    break;
                else
                    counter_f3(i) = counter_f3(i) + 1;
                    a = a;
                    b = x2;
                    break;
                end
            else
                f_x2 = f3(x2);
                counter_f3(i) = counter_f3(i) + 1;
                k = k + 1;
            end
        elseif f_x1 < f_x2
            a = a;
            b = x2;
            x2 = x1;
            f_x2 = f_x1;
            x1 = a + fibonacci(n-k-2) * (b - a) / fibonacci(n-k);
    
            if k == n - 2
                x1 = x1;
                x2 = x1 + e;
                if f_x1 > f3(x2)
                    counter_f3(i) = counter_f3(i) + 1;
                    a = x1;
                    b = b;
                    break;
                else
                    counter_f3(i) = counter_f3(i) + 1;
                    a = a;
                    b = x2;
                    break;
                end
            else
                f_x1 = f3(x1);
                counter_f3(i) = counter_f3(i) + 1;
                k = k + 1;
            end
        end
    end
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





function f_n = fibonacci(n)
    if n < 0
        error('Το n πρέπει να είναι θετικός ακέραιος.');
    elseif n == 0 || n == 1
        f_n = 1;
    else
        f_n = fibonacci(n - 1) + fibonacci(n - 2);
    end
end
