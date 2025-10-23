% YX
clear

sky = slanCM('Blues'); 
cmin = 0;cmax = 1; 

YX=...
[0.41525, 	0.07203, 	0.04661, 	0.46610; 
0.48899, 	0.04405, 	0.07489, 	0.39207; 
0.05652, 	0.43478, 	0.46522, 	0.04348; 
0.06103, 	0.39437, 	0.49296, 	0.05164 ];

xlabel_name = {'|R+\rangle','|R-\rangle','|L+\rangle','|L-\rangle'}; 
ylabel_name = {'|RR\rangle','|RL\rangle','|LR\rangle','|LL\rangle'};
h1 = heatmap(xlabel_name,ylabel_name,YX,'FontName','Times New Roman',...
    'FontSize',14,'Colormap',sky,'ColorLimits',[cmin cmax]);
h1.NodeChildren(3).LineWidth = 1.5; 
h1.CellLabelColor = 'none';
