% ZY
clear

sky = slanCM('Blues'); 
cmin = 0;cmax = 1; 

ZY=...
[0.51556, 	0.04444, 	0.03556, 	0.40444; 
0.01293, 	0.60345, 	0.34914, 	0.03448; 
0.40426, 	0.02979, 	0.02128, 	0.54468; 
0.01036, 	0.44560, 	0.51295, 	0.03109 ];

xlabel_name = {'|HR\rangle','|HL\rangle','|VR\rangle','|VL\rangle'}; 
ylabel_name = {'|RR\rangle','|RL\rangle','|LR\rangle','|LL\rangle'};
h1 = heatmap(xlabel_name,ylabel_name,ZY,'FontName','Times New Roman',...
    'FontSize',14,'Colormap',sky,'ColorLimits',[cmin cmax]);
h1.NodeChildren(3).LineWidth = 1.5;
h1.CellLabelColor = 'none';
