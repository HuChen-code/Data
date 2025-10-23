%% phi+
clear

sky = slanCM('greens'); 

p = [0.9385,1-0.9228,0.9412];
n = [244,246,204];
e = sqrt(2)*sqrt(round(p.*n).*(n-round(p.*n))./n.^3);

b=bar(2*p-1,'EdgeColor','none','BarWidth',0.9);
b.FaceColor = 'flat';
b.CData(1,:)=sky(round((1-p(1))*256)+60,:);
b.CData(2,:)=sky(round(p(2)*256)+60,:); 
b.CData(3,:)=sky(round((1-p(3))*256)+60,:); 

hold on
errorbar(2*p-1,e,LineStyle="none",LineWidth=1,CapSize=7,Color=[0,0,0])
yline(0,LineWidth=1.5)

F = 0.25*(1+sum(abs(2*p-1)));
Fe = sqrt(sum(e.^2));

set(gca,'Linewidth',1.5)
ylim([-1,1])
xlim([0.2,3.8])
ax=gca;
ax.XTickLabel={'\langleXX\rangle','\langleYY\rangle','\langleZZ\rangle'};
ylabel('Expected value')
