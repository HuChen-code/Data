%% ZZ
clear

sky = slanCM('Blues'); 
cmin = 0;cmax = 1; 

ZZ=...
[0.96044,	0.02848, 	0.00316, 	0.00791; 
0.03682, 	0.94845, 	0.00736, 	0.00736;
0.00716, 	0.00477, 	0.01671, 	0.97136; 
0.00136, 	0.00949, 	0.94444,	0.04472 ];

xlabel_name = {'|HH\rangle','|HV\rangle','|VH\rangle','|VV\rangle'}; 
ylabel_name = {'|HH\rangle','|HV\rangle','|VH\rangle','|VV\rangle'};
h1 = heatmap(xlabel_name,ylabel_name,ZZ,'FontName','Times New Roman',...
    'FontSize',14,'Colormap',sky,'ColorLimits',[cmin cmax]);
h1.NodeChildren(3).LineWidth = 1.5; 
h1.CellLabelColor = 'none';