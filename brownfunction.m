clear
clc
warning off
    
x1min=-1;
x1max=1;
x2min=-1;
x2max=1;
R=1500; 
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=(x1(j).^2)^(x2(i).^2+1)+(x2(i).^2)^(x1(i).^2+1);
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
 