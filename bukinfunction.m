% Bukin Function %
% f (x) = 100(x2-0.01x1^2 +1) + 0.01(x1 + 10)^2 %
% −15 ≤ x1 ≤ −5 and −3 ≤ x2 ≤ −3 %  
% global minimum f(x1,x2) = (−10, 0) %


clear
clc
warning off

x1min=-15;
x1max=-5;
x2min=-3;
x2max=3;
R=10; 
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=100*(x2(i)-0.01*x1(j).^2 + 1)+0.01*((x1(j)+10).^2);
    end
    
    ftotal(j,:)=f;

end


meshc(x1,x2,ftotal);colorbar;set(gca,'FontSize',12);
xlabel('x_2','FontName','Times','FontSize',20,'FontAngle','italic');
set(get(gca,'xlabel'),'rotation',25,'VerticalAlignment','bottom');
ylabel('x_1','FontName','Times','FontSize',20,'FontAngle','italic');
set(get(gca,'ylabel'),'rotation',-25,'VerticalAlignment','bottom');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('3D View','FontName','Times','FontSize',24,'FontWeight','bold');
