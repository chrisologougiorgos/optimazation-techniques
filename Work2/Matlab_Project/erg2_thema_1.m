clc, clearvars, close all;

x = linspace(-2, 2, 1000);
y = linspace(-2, 2, 1000);
[X, Y] = meshgrid(x, y);

Z = X.^5 .* exp( - X.^2 - Y.^2);

[minZ, idx] = min(Z(:)); 
[minX, minY] = ind2sub(size(Z), idx); 
x_min = X(minX, minY);
y_min = Y(minX, minY);

figure;
surf( X, Y, Z);
colorbar;
xlabel('X');
ylabel('Y');
zlabel('Z');
title('f(x, y) = x^5 e^{-(x^2 + y^2)}');
shading interp;

hold on;
plot3(x_min, y_min, minZ, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
offset_x = 0.3; % Μετατόπιση δεξιά
offset_y = -0.3; % Μετατόπιση κάτω
text(x_min + offset_x, y_min + offset_y, minZ, ...
    sprintf('Min: (%.2f, %.2f, %.2f)', x_min, y_min, minZ), ...
    'HorizontalAlignment', 'left', ...
    'VerticalAlignment', 'top', ...
    'BackgroundColor', 'w', ... 
    'EdgeColor', 'k'); 