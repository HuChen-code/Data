%% QGV
clear

sky = slanCM('purples'); 
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
subplot(1,2,1)
semilogx(N,E,'DisplayName','Simulation','LineWidth',1.1,'Color',[0,0,0]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 14);
Es = d/(d+1)*(1-Dinverse(ps,delta,Ne))/mu;
set(gca,'linewidth',1.1) 
hold on

std=sqrt(ps*(1-ps)./N);

E1 = zeros(1,Res);
for j=1:Res
    [pa,fval] = Dinverse(ps+std(j),delta,N(j));
    if fval>0.01
        disp('Significant deviation!!!')
    end
    E1(j) = d/(d+1)*(1-pa)/mu;
end

E2 = zeros(1,Res);
for j=1:Res
    [pa,fval] = Dinverse(ps-std(j),delta,N(j));
    if fval>0.01
        disp('Significant deviation!!!')
    end
    E2(j) = d/(d+1)*(1-pa)/mu;
end

h2 = fill([N,fliplr(N)],[E2,fliplr(E1)],sky(120,:));
set(h2,'edgealpha',0,'facealpha',0.3)
ylim([0.1,0.27])
legend('\epsilon_{CNOT}^{up}','2\Delta\epsilon_{CNOT}^{up}' )

subplot(1,2,2)
semilogx(N,1-E,'DisplayName','Simulation','LineWidth',1.1,'Color',[0,0,0]);
hold on
h3 = fill([N,fliplr(N)],[1-E2,fliplr(1-E1)],sky(120,:));
set(h3,'edgealpha',0,'facealpha',0.3)
ylim([0.73,0.9])
legend('1-\epsilon_{CNOT}^{up}','2\Delta\epsilon_{CNOT}^{up}' )
set(gca, 'FontName', 'Times New Roman', 'FontSize', 14);
set(gca,'linewidth',1.1) 

stde = sqrt(ps*(1-ps)./Ne);
pa1e = Dinverse(ps+stde,delta,Ne);
E1e = d/(d+1)*(1-pa1e)/mu;
pa2e = Dinverse(ps-stde,delta,Ne);
E2e = d/(d+1)*(1-pa2e)/mu;
pae = Dinverse(ps,delta,Ne);
Ee = d/(d+1)*(1-pae)/mu;

