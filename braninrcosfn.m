clear
clc
warning off
    
x1min=-5;
x1max=10;
x2min=0;
x2max=15;
R=1500; 
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
        
    for i=1:length(x2)
        f(i)=(x2(i)-(5.1/(4*(pi.^2)))*(x1(j).^2)+(5/pi)*x1(j)-6).^2 + 10*(1-(1/(8*pi)))*cos(x1(j))+10;
    end
        
   ftotal(j,:)=f;

end

meshc(x1,x2,ftotal);colorbar;set(gca,'FontSize',12);
xlabel('x2','FontName','Times','FontSize',20,'FontAngle','italic');
set(get(gca,'xlabel'),'rotation',25,'VerticalAlignment','bottom');
ylabel('x1','FontName','Times','FontSize',20,'FontAngle','italic');
set(get(gca,'ylabel'),'rotation',-25,'VerticalAlignment','bottom');
zlabel('f(X)','FontName','Times','FontSize',20,'FontAngle','italic');
title('3D View','FontName','Times','FontSize',24,'FontWeight','bold');

