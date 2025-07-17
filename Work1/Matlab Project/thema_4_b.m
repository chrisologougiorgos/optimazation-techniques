clc, clearvars, close all;

l = [0.0025, 0.005, 0.01];
e = 0.00001;
    
figure;
for i=1:length(l)
    a = -1;
    b = 3;
    
    n = 0;
    while (1/2)^n > l(i)/(b-a)
        n = n + 1;
    
    end

    k = 1;
    x = 0;

    a_values = [];
    b_values = [];
    k_values = [];
    a_values(end+1) = a;
    b_values(end+1) = b;
    k_values(end+1) = k;
    
    while true
        x = (a + b) / 2;
        f2_der = f1_derivative(x);
    
        if f2_der == 0
            break;
        elseif f2_der > 0
            a = a;
            b = x;
            a_values(end+1) = a;
            b_values(end+1) = b;

            if k == n
                k_values(end+1) = k + 1;
                break;
            else
                k = k + 1;
                k_values(end+1) = k;
            end
        else
            a = x;
            b = b;
            a_values(end+1) = a;
            b_values(end+1) = b;

            if k == n
                k_values(end+1) = k + 1;
                break;
            else
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
for i=1:length(l)
    a = -1;
    b = 3;
    
    n = 0;
    while (1/2)^n > l(i)/(b-a)
        n = n + 1;
    
    end

    k = 1;
    x = 0;
    
    a_values = [];
    b_values = [];
    k_values = [];
    a_values(end+1) = a;
    b_values(end+1) = b;
    k_values(end+1) = k;
    
    while true
        x = (a + b) / 2;
        f2_der = f2_derivative(x);
    
        if f2_der == 0
            break;
        elseif f2_der > 0
            a = a;
            b = x;
            a_values(end+1) = a;
            b_values(end+1) = b;

            if k == n
                k_values(end+1) = k + 1;
                break;
            else
                k = k + 1;
                k_values(end+1) = k;
            end
        else
            a = x;
            b = b;
            a_values(end+1) = a;
            b_values(end+1) = b;

            if k == n
                k_values(end+1) = k + 1;
                break;
            else
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
for i=1:length(l)
    a = -1;
    b = 3;
    
    n = 0;
    while (1/2)^n > l(i)/(b-a)
        n = n + 1;
    
    end

    k = 1;
    x = 0;
    
    a_values = [];
    b_values = [];
    k_values = [];
    a_values(end+1) = a;
    b_values(end+1) = b;
    k_values(end+1) = k;
    
    while true
        x = (a + b) / 2;
        f3_der = f3_derivative(x);
    
        if f3_der == 0
            break;
        elseif f3_der > 0
            a = a;
            b = x;
            a_values(end+1) = a;
            b_values(end+1) = b;

            if k == n
                k_values(end+1) = k + 1;
                break;
            else
                k = k + 1;
                k_values(end+1) = k;
            end
        else
            a = x;
            b = b;
            a_values(end+1) = a;
            b_values(end+1) = b;

            if k == n
                k_values(end+1) = k + 1;
                break;
            else
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