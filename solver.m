function solver(k)
tspan = [0:1:120];
c0 = [0 0 0 0 0 0 0 0 0.01252 250e-6 5.058e-4 0 0 0 0 ];
[t, c] = ode15s(@(t, c) odefun(k, c), tspan, c0);  %ode 45s does not give solution so tried different ode solver and ode 15s solving quite beautifully
plot(t, c(:, 11), '-o')
hold on
plot(t, c(:, 14), 'r')
%plot(t, c(:, 3), 'k')
%plot(t, c(:, 4), 'b')
%plot(t, c(:, 5), 'c')
hold off

