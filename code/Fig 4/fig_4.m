clear

sky1 = slanCM('Blues'); 
sky2 = slanCM('purples'); 

% CNOT
p1 = [1-0.9170,0.9170];
n1 = 289; 
e1 = sqrt(round(p1.*n1).*(n1-round(p1.*n1))./n1.^3); 

% I
p2 = [0.9583,1-0.9583];
n2 = 240; 
e2 = sqrt(round(p2.*n2).*(n2-round(p2.*n2))./n2.^3); 

data = [p1(1), p2(1); 
        p1(2), p2(2)]; 
errors = [e1(1), e2(1); 
          e1(2), e2(2)];

figure;
h = bar(data, 'grouped', 'EdgeColor','none','BarWidth', 1);

hold on;

xpos = zeros(size(data));
for i = 1:numel(h)
    xpos(:,i) = h(i).XEndPoints';
end

errorbar(xpos, data, errors, 'k', 'LineStyle', 'none', 'LineWidth', 1);
hold off;


h(1).FaceColor=sky1(round(p1(1)*256)+130,:);
h(2).FaceColor=sky2(round(p1(1)*256)+70,:);


set(gca, 'XTickLabel', {'|H\rangle','|V\rangle'}, 'FontName', 'Times New Roman');
legend({'CNOT', 'I'}, 'Location', 'northoutside','Orientation', 'horizontal');
ylabel('Probability');
set(gca,'Linewidth',1.5)
yticks([0,0.2,0.4,0.6,0.8,1])
ylim([0,1])
