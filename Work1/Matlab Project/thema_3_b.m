clc, clearvars, close all;

l = [0.0025, 0.005, 0.01];
e = 0.00001;

figure;
for i = 1:length(l)
    a = -1;
    b = 3;
    n = 0;
    f_n = 0;
    k = 1;
    a_values = [];
    b_values = [];
    k_values = [];
    a_values(end+1) = a;
    b_values(end+1) = b;
    k_values(end+1) = k;

    while f_n <= (b - a) / l(i)
        f_n = fibonacci(n);
        n = n + 1;
    end
    
    x1 = a + fibonacci(n-2) * (b - a) / fibonacci(n);
    x2 = a + fibonacci(n-1) * (b - a) / fibonacci(n);
    f_x1 = f1(x1);
    f_x2 = f1(x2);
    
    while true
        if f_x1 > f_x2
            a = x1;
            b = b;
            a_values(end+1) = a;
            b_values(end+1) = b;
            x1 = x2;
            f_x1 = f_x2;
            x2 = a + fibonacci(n-k-1) * (b - a) / fibonacci(n-k);
    
            if k == n - 2
                x1 = x1;
                x2 = x1 + e;
                k_values(end+1) = k+1
                if f_x1 > f1(x2)
                    a = x1;
                    b = b;
                    k_values(end+1) = k+1;
                    a_values(end+1) = a;
                    b_values(end+1) = b;
                    break;
                else
                    a = a;
                    b = x2;
                    a_values(end+1) = a;
                    b_values(end+1) = b;
                    break;
                end
            else
                f_x2 = f1(x2);
                k = k + 1;
                k_values(end+1) = k;
            end
        elseif f_x1 < f_x2
            a = a;
            b = x2;
            a_values(end+1) = a;
            b_values(end+1) = b;
            x2 = x1;
            f_x2 = f_x1;
            x1 = a + fibonacci(n-k-2) * (b - a) / fibonacci(n-k);
    
            if k == n - 2
                x1 = x1;
                x2 = x1 + e;
                k_values(end+1) = k+1;
                if f_x1 > f1(x2)
                    a = x1;
                    b = b;
                    k_values(end+1) = k+1;
                    a_values(end+1) = a;
                    b_values(end+1) = b;
                    break;
                else
                    a = a;
                    b = x2;
                    k_values(end+1) = k+1;
                    a_values(end+1) = a;
                    b_values(end+1) = b;
                    break;
                end
            else
                f_x1 = f1(x1);
                k = k + 1;
                k_values(end+1) = k;
            end
        end
    end
    
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
for i = 1:length(l)
    a = -1;
    b = 3;
    n = 0;
    f_n = 0;
    k = 1;
    a_values = [];
    b_values = [];
    k_values = [];
    a_values(end+1) = a;
    b_values(end+1) = b;
    k_values(end+1) = k;

    while f_n <= (b - a) / l(i)
        f_n = fibonacci(n);
        n = n + 1;
    end
    
    x1 = a + fibonacci(n-2) * (b - a) / fibonacci(n);
    x2 = a + fibonacci(n-1) * (b - a) / fibonacci(n);
    f_x1 = f2(x1);
    f_x2 = f2(x2);
    
    while true
        if f_x1 > f_x2
            a = x1;
            b = b;
            a_values(end+1) = a;
            b_values(end+1) = b;
            x1 = x2;
            f_x1 = f_x2;
            x2 = a + fibonacci(n-k-1) * (b - a) / fibonacci(n-k);
    
            if k == n - 2
                x1 = x1;
                x2 = x1 + e;
                k_values(end+1) = k + 1;
                if f_x1 > f2(x2)
                    a = x1;
                    b = b;
                    k_values(end+1) = k+1;
                    a_values(end+1) = a;
                    b_values(end+1) = b;
                    break;
                else
                    a = a;
                    b = x2;
                    k_values(end+1) = k+1;
                    a_values(end+1) = a;
                    b_values(end+1) = b;
                    break;
                end
            else
                f_x2 = f2(x2);
                k = k + 1;
                k_values(end+1) = k;
            end
        elseif f_x1 < f_x2
            a = a;
            b = x2;
            a_values(end+1) = a;
            b_values(end+1) = b;
            x2 = x1;
            f_x2 = f_x1;
            x1 = a + fibonacci(n-k-2) * (b - a) / fibonacci(n-k);
    
            if k == n - 2
                x1 = x1;
                x2 = x1 + e;
                k_values(end+1) = k + 1;
                if f_x1 > f2(x2)
                    a = x1;
                    b = b;
                    k_values(end+1) = k+1;
                    a_values(end+1) = a;
                    b_values(end+1) = b;
                    break;
                else
                    a = a;
                    b = x2;
                    k_values(end+1) = k+1;
                    a_values(end+1) = a;
                    b_values(end+1) = b;
                    break;
                end
            else
                f_x1 = f2(x1);
                k = k + 1;
                k_values(end+1) = k;
            end
        end
    end
    
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
for i = 1:length(l)
    a = -1;
    b = 3;
    n = 0;
    f_n = 0;
    k = 1;
    a_values = [];
    b_values = [];
    k_values = [];
    a_values(end+1) = a;
    b_values(end+1) = b;
    k_values(end+1) = k;

    while f_n <= (b - a) / l(i)
        f_n = fibonacci(n);
        n = n + 1;
    end
    
    x1 = a + fibonacci(n-2) * (b - a) / fibonacci(n);
    x2 = a + fibonacci(n-1) * (b - a) / fibonacci(n);
    f_x1 = f3(x1);
    f_x2 = f3(x2);
    
    while true
        if f_x1 > f_x2
            a = x1;
            b = b;
            a_values(end+1) = a;
            b_values(end+1) = b;
            x1 = x2;
            f_x1 = f_x2;
            x2 = a + fibonacci(n-k-1) * (b - a) / fibonacci(n-k);
    
            if k == n - 2
                x1 = x1;
                x2 = x1 + e;
                k_values(end+1) = k + 1;
                if f_x1 > f3(x2)
                    a = x1;
                    b = b;
                    k_values(end+1) = k+1;
                    a_values(end+1) = a;
                    b_values(end+1) = b;
                    break;
                else
                    a = a;
                    b = x2;
                    k_values(end+1) = k+1;
                    a_values(end+1) = a;
                    b_values(end+1) = b;
                    break;
                end
            else
                f_x2 = f3(x2);
                k = k + 1;
                k_values(end+1) = k;
            end
        elseif f_x1 < f_x2
            a = a;
            b = x2;
            a_values(end+1) = a;
            b_values(end+1) = b;
            x2 = x1;
            f_x2 = f_x1;
            x1 = a + fibonacci(n-k-2) * (b - a) / fibonacci(n-k);
    
            if k == n - 2
                x1 = x1;
                x2 = x1 + e;
                k_values(end+1) = k + 1;
                if f_x1 > f3(x2)
                    a = x1;
                    b = b;
                    k_values(end+1) = k+1
                    a_values(end+1) = a;
                    b_values(end+1) = b;
                    break;
                else
                    a = a;
                    b = x2;
                    k_values(end+1) = k+1
                    a_values(end+1) = a;
                    b_values(end+1) = b;
                    break;
                end
            else
                f_x1 = f3(x1);
                k = k + 1;
                k_values(end+1) = k;
            end
        end
    end
    
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




function f_n = fibonacci(n)
    if n < 0
        error('Το n πρέπει να είναι θετικός ακέραιος.');
    elseif n == 0 || n == 1
        f_n = 1;
    else
        f_n = fibonacci(n - 1) + fibonacci(n - 2);
    end
end