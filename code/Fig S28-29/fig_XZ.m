%% XZ
clear

sky = slanCM('Blues'); 
cmin = 0;cmax = 1; 

XZ=...
[0.03571 	0.44196 	0.46429 	0.05804 
0.47458 	0.04661 	0.05932 	0.41949 
0.46320 	0.03896 	0.03463 	0.46320 
0.04741 	0.49138 	0.40948 	0.05172 ];

xlabel_name = {'|+H\rangle','|+V\rangle','|-H\rangle','|-V\rangle'}; 
ylabel_name = {'|RR\rangle','|RL\rangle','|LR\rangle','|LL\rangle'};
h1 = heatmap(xlabel_name,ylabel_name,XZ,'FontName','Times New Roman',...
    'FontSize',14,'Colormap',sky,'ColorLimits',[cmin cmax]);
h1.NodeChildren(3).LineWidth = 1.5; 
h1.CellLabelColor = 'none';
