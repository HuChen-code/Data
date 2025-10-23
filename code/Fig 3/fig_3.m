%% QGV
clear

sky = slanCM('Blues'); 
cmin = 0;cmax = 1; 

d = 4; 
mu = 5/9; 
ps = 0.9286; 
Ne = 8717; 
conf = 0.95; 
delta = 1-conf;

Res = 1000;
N = logspace(2,6,Res); 
E = zeros(1,Res); 
for j=1:Res
    [pa,fval] = Dinverse(ps,delta,N(j));
    if fval>0.01
        disp('Significant deviation!!!')
    end
    E(j) = d/(d+1)*(1-pa)/mu;
end
semilogx(N,1-E,'DisplayName','Simulation','LineWidth',1.1,'Color',[0,0,0]/255);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 14);
set(gca,'linewidth',1.2) 

hold on
Es = d/(d+1)*(1-Dinverse(ps,delta,Ne))/mu;
errorbar(Ne,1-Es, 0.00413, 0.00417,'s','Color',[8,76,150]/255,'MarkerSize',6,'MarkerFaceColor',[8,76,150]/255, 'LineWidth',1,'Color',[8,76,150]/255); 

% Hofmann bound
x = [100 10^6 10^6 100];
yu = [0.9115 0.9115 0.9215 0.9215];
patch(x,yu,[249,154,106]/255,'FaceAlpha',0.4,'EdgeAlpha',0)
yline(0.9165,'--',LineWidth=1.3,Color=[241,108,35]/255)

yd = [0.8664 0.8664 0.8790 0.8790];
patch(x,yd,[195,217,204]/255,'FaceAlpha',0.6,'EdgeAlpha',0)
yline(0.8727,LineWidth=1.1,Color=[27,124,61]/255)

ylim([0.83,0.93])
xlim([250,10^6])
yticks([0.83, 0.88, 0.93]);
xticks([10^3,10^4,10^5,10^6])
legend('QGV method','Experimental result')




