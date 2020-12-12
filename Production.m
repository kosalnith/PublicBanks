%Production
clear 
[X,Y]=xlsread('AgriculturalData.xlsx', 'Production');
dates = X(:,2);
series = Y(:,3:48);
X0 = X(:,3:48);
X0Tb = array2table(X0, 'VariableNames',{'CP01','CP02','CP03','CP04','CP05'...
    ,'CP06','CP07','CP08','CP09','CP10','CP11','CP12','CP13','CP14','CP15'...
    ,'CP16','CP17','CP18','CP19','CP20','CP21','CP22','CP23','CP24','CP25'...
    ,'CP26','CP27','CP28','CP29','CP30','CP31','CP32','LP01','LP02','LP03'...
    ,'LP04','LP05','LP06','LP07','LP08','LP09','LP10','LP11','LP12','LP13','LP14'});
predN0 = series;
T0 = size(X0,1);
dateN = datenum([dates,ones(T0,2)]);

figure;
%initialColorOrder = get(gca,'ColorOrder');
plot(dateN,X0, 'LineWidth',2)
ax = gca;
%ylim([200 1000])
ax.XTick = dateN(1:2:end);
axis('tight')
get(gca,'ColorOrder')

datetick('x','yyyy','keepticks')
xlabel('Year', 'Interpreter', 'latex','FontSize', 13) 
ylabel('Production in Tonnes', 'Interpreter', 'latex', 'FontSize', 13)
recessionplot;

legend(predN0,'Location','NW', 'NumColumns',4,'Interpreter','latex','FontSize',10);
%title('{\bf Agricultural Production}', 'FontSize', 15)
grid('on')

set(gcf,'PaperUnits','centimeters','PaperSize',[30 20]); %[x y]
set(gcf,'PaperPosition',[-3.3 0 36 20]); %[left bottom width height]
print(gcf,'-dpdf','C:\Users\Nith Kosal\Documents\Kosal Documents\Research Projects\2020\2020_01\Paper\Figure\Figure12.pdf');
