function diff = fun(k, c_exp)
tspan = [0:1:120];
c0 = [0 0 0 0 0 0 0 0 0.01252 250e-6 5.058e-4 0 0 0 0 ];
[t, c] = ode15s(@(t, c) odefun(k, c), tspan, c0);
c_th11 = (c(:, 11))';
c_th14 = (c(:, 14))';
c_th15 = (c(:, 15))';
diff = abs(c_th11.*1000 - c_exp(1, :).*1000) + abs((c_th14+c_th15).*1000 - c_exp(2, :).*1000); %diff of theoretical and experimental data

