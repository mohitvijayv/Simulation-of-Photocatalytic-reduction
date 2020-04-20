c_exp = TiO2_exp_data;
%k0 = [0.5; 0.1];
k0 = [1453 210; 903 0; 321 0; 296.4 1370; 1109 8.25; 181 0; 10 0; 172 0; 20.9 0; 10 0; 1244 0; 3016 0; 2437 0]; %initial guess
lb=zeros(13, 2); %lower and upper bound for calculation of k optimized
ub=ones(13,2)*10e4;
k_optimized = lsqnonlin(@(k)fun(k, c_exp), k0, lb, ub) %non linear regression to get best k
solver(k_optimized);