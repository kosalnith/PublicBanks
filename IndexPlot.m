%IndexPlot
clear;
clc;
[X,Y]=xlsread('Production.xlsx', 'Index');
x1 = X(:,2);
x2 = X(:,3);
x3 = X(:,4);
x4 = X(:,5);
x5 = X(:,6);
y1 = Y(3:end,1:1);
y = categorical(y1);

figure;

ax1 = subplot(2,2,1); % Left subplot
gscatter(ax1, x1, x5, y,'','.',39);
%xticks([.01 .03 .06 .09 .12 .15 .18 .21 .24 .27 .30]);
t11 = xlabel('Market Concentration (1959-1973)', 'Interpreter', 'latex');
set(t11, 'FontSize', 18);
t12 = ylabel('Market Concentration (1959-2018)', 'Interpreter', 'latex');
set(t12, 'FontSize', 18);
t1 = title(ax1,'Panel A: 1959-1973', 'Interpreter', 'latex');
%set(ax1,'FontName','Century');

%set(subplot1,'ContextMenu', 'Interpreter', 'latex');
%t1 = title(ax1,'\textbf{Panel A}', 'Interpreter', 'latex');
set(t1, 'FontSize', 23);
grid on;
legend1 = legend(ax1,'off');
%set(legend1,'NumColumns',2,'Interpreter','latex','FontSize',8,'Location','southeast');
xlim([-.05 .4]);
ylim([-.05 .25]);
%--------------------------------------------------------------------------

ax3 = subplot(2,2,2); % Left subplot
gscatter(ax3, x2, x5, y, '','.',39);
%xticks([.01 .03 .06 .09 .12 .15 .18 .21 .24 .27 .30]);
t13 = xlabel('Market Concentration (1974-1988)', 'Interpreter', 'latex');
set(t13, 'FontSize', 18);
t14 = ylabel('Market Concentration (1959-2018)', 'Interpreter', 'latex');
set(t14, 'FontSize', 18);
t3 = title(ax3,'Panel B: 1974-1988', 'Interpreter', 'latex');
%set(ax1,'FontName','Century');

%set(subplot1,'ContextMenu', 'Interpreter', 'latex');
%t1 = title(ax1,'\textbf{Panel A}', 'Interpreter', 'latex');
set(t3, 'FontSize', 23);
grid on;
legend3 = legend(ax3,'show');
set(legend3,'NumColumns',2,'Interpreter','latex','FontSize',8,'Location','southeast');
xlim([-.05 .4]);
ylim([-.05 .25]);

%--------------------------------------------------------------------------
ax4 = subplot(2,2,3); % Left subplot
gscatter(ax4, x3, x5, y, '','.',39);
%xticks([.01 .03 .06 .09 .12 .15 .18 .21 .24 .27 .30]);
t23 = xlabel('Market Concentration (1989-2003)', 'Interpreter', 'latex');
set(t23, 'FontSize', 18);
t24 = ylabel('Market Concentration (1959-2018)', 'Interpreter', 'latex');
set(t24, 'FontSize', 18);
t4 = title(ax4,'Panel C: 1989-2003', 'Interpreter', 'latex');
%set(ax1,'FontName','Century');

%set(subplot1,'ContextMenu', 'Interpreter', 'latex');
%t1 = title(ax1,'\textbf{Panel A}', 'Interpreter', 'latex');
set(t4, 'FontSize', 23);
grid on;
legend4 = legend(ax4,'off');
%set(legend4,'NumColumns',2,'Interpreter','latex','FontSize',8,'Location','southeast');
xlim([-.05 .4]);
ylim([-.05 .25]);
%--------------------------------------------------------------------------
ax2 = subplot(2,2,4); % Right subplot
gscatter(ax2, x4, x5, y, '','.',39);

t21 = xlabel('Market Concentration (2004-2018)', 'Interpreter', 'latex');
set(t21, 'FontSize', 18);


t22 = ylabel('Market Concentration (1959-2018)', 'Interpreter', 'latex');
set(t22, 'FontSize', 18);

t2 = title(ax2,'Panel D: 2004-2018', 'Interpreter', 'latex');
set(t2, 'FontSize', 23);

legend2 = legend(ax2,'off');
%set(legend2,'NumColumns',2,'Interpreter','latex','FontSize',8,'Location','southeast');
grid on;
xlim([-.05 .4]); 
ylim([-.05 .25]);

%--------------------------------------------------------------------------
set(gcf,'PaperUnits','centimeters','PaperSize',[40 27]); %[x y]
set(gcf,'PaperPosition',[-4.25 -2 48 30]); %[left bottom width height]

print(gcf,'-dpdf','C:\Users\Nith Kosal\Documents\Kosal Documents\Research Projects\2020\2020_01\Paper\Figure\Figure5.pdf');
