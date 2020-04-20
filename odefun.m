function dcdt = odefun(k, c)
r = zeros(13,1);
n = 6; %n here represents the no of molecules of co2 in reaction

r(1)= k(1,1)*c(9)*c(10)-k(1,2)*c(7);   %rates for each equation
r(2)= k(2,1)*c(7);
r(3)= k(3,1)*c(8);
r(4)= k(4,1)*c(9)*c(11)-k(4,2)*c(1);
r(5)= k(5,1)*c(1)-k(5,2)*c(2)*c(4);
r(6)= k(6,1)*c(2);
r(7)= k(7)*c(2)*c(12); 
r(8)= k(8)*c(4);
r(9)= k(9)*(c(5)^2)*(c(14)^2);
r(10)= k(10,1)*c(6)*c(4);
r(11)= k(11,1)*c(3)*(c(1)+c(11));
r(12)= k(12,1)*c(5)*(c(1)+c(11));
r(13)= k(13,1)*c(14)^n;


dcdt = zeros(15, 1);
dcdt(1)= r(4)-r(5)-r(11)-r(12);     %rate of change of concentration for each species.
dcdt(2)= r(5)-r(6)-r(7);
dcdt(3)= r(6)+r(7)+r(10)-r(11);
dcdt(4)= r(5)-r(8)-r(10);
dcdt(5)= r(8)-2*r(9);
dcdt(6)= r(9)-r(10);
dcdt(7)= r(1)-r(2);
dcdt(8)= r(2)-r(3);
dcdt(9)= -r(4)+r(12)+r(11)-r(1)+r(3);
dcdt(10)= -r(11);
dcdt(11)= -r(4); %phenol concentration
dcdt(12)= -r(7)+r(10);
dcdt(13)= r(6)-2*r(9);
dcdt(14)= r(11)+r(12)-r(13); %ROF concentration
dcdt(15)= n*r(13);