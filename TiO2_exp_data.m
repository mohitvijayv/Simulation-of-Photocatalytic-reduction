function c_exp = TiO2_exp_data
%phenol 250mM Cu
x(1, :) = [0 5 10 20 30 60 90 120];
y(1, :) = [5.058e-4 3.996e-4 2.494e-4 1.062e-4 4.158e-5 6.929e-6 4.619e-6 4.619e-6];
xx(1, :) = [0:1:120];
yy(1, :)=spline(x(1,:),y(1,:),xx(1,:));
c_exp(1, :)=yy(1,:);
plot(x(1,:),y(1,:),'d','MarkerFaceColor','blue'); 
hold on
%ROF 250mM Cu
x(2,:) = [0 5 10 20 30 60 90 120];
y(2,:) = [0 3.234e-5 7.622e-5 2.679e-4 3.788e-4 4.851e-4 4.897e-4 4.943e-4];
xx(2,:) = [0:1:120];
yy(2,:)=spline(x(2,:),y(2,:),xx(2,:));
c_exp(2,:)=yy(2,:);
plot(x(2,:),y(2,:),'s','MarkerFaceColor','red');
hold on


 %graph appearance 
set(gca,'fontname','times new roman');
 legend('phenol','ROF+CO_{2}');
 set(gca,'XTickLabel',{0,20,40,60,80,100,120},'fontsize',12,'Fontweight','Bold');
 set(gca,'linewidth',2) ;
 xlim([-5,130]);
 ylim([0 6e-4]);
 set(xlabel('Time of UV exposure, min','FontSize',14,'FontWeight','normal'));
set( ylabel('Concentration of 4-nitrophenol,mols L^{-1}','FontSize',14,'FontWeight','normal'));
 title('Concentration profile of 50 mg L^{-1} of phenol with 250 \muM Cu^{6+}','fontname','times new roman','FontSize',26);
