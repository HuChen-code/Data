%% XX
clear

sky = slanCM('Blues'); 
cmin = 0;cmax = 1; 

XX=...
[0.91395, 	0.00391, 	0.08083, 	0.00130; 
0.00125, 	0.06750, 	0.00375, 	0.92750; 
0.08590, 	0.00256, 	0.90513, 	0.00641; 
0.00910, 	0.91938, 	0.00000, 	0.07152 ];

xlabel_name = {'|++\rangle','|+-\rangle','|-+\rangle','|--\rangle'}; 
ylabel_name = {'|++\rangle','|+-\rangle','|-+\rangle','|--\rangle'};
h1 = heatmap(xlabel_name,ylabel_name,XX,'FontName','Times New Roman',...
    'FontSize',14,'Colormap',sky,'ColorLimits',[cmin cmax]);
h1.NodeChildren(3).LineWidth = 1.5; 
h1.CellLabelColor = 'none';
