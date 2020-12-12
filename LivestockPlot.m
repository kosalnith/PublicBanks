%Production
clear 
[X,Y]= xlsread('Production.xlsx', 'Production');
dates = X(:,1);
series = Y(:,2:47);
x = X(:,2:47);
X0Tb = array2table(x, 'VariableNames',{'CP01','CP02','CP03','CP04','CP05'...
    ,'CP06','CP07','CP08','CP09','CP10','CP11','CP12','CP13','CP14','CP15'...
    ,'CP16','CP17','CP18','CP19','CP20','CP21','CP22','CP23','CP24','CP25'...
    ,'CP26','CP27','CP28','CP29','CP30','CP31','CP32','LP01','LP02','LP03'...
    ,'LP04','LP05','LP06','LP07','LP08','LP09','LP10','LP11','LP12','LP13','LP14'});
T = size(x,1);
dateN = datenum([dates,ones(T,2)]);
x1 = X(:,2:2);x2 = X(:,3:3); x3 = X(:,4:4); x4 = X(:,5:5);
x5 = X(:,6:6); x6 = X(:,7:7); x7 = X(:,8:8); x8 = X(:,9:9);
x9 = X(:,10:10); x10 = X(:,11:11); x11 = X(:,12:12); x12 = X(:,13:13);
x13 = X(:,14:14); x14 = X(:,15:15); x15 = X(:,16:16); x16 = X(:,17:17);
x17 = X(:,18:18); x18 = X(:,19:19); x19 = X(:,20:20); x20 = X(:,21:21);
x21 = X(:,22:22); x22 = X(:,23:23); x23 = X(:,24:24); x24 = X(:,25:25);
x25 = X(:,26:26); x26 = X(:,27:27); x27 = X(:,28:28); x28 = X(:,29:29);
x29 = X(:,30:30); x30 = X(:,31:31); x31 = X(:,32:32); x32 = X(:,33:33);
x33 = X(:,34:34); x34 = X(:,35:35); x35 = X(:,36:36); x36 = X(:,37:37);
x37 = X(:,38:38); x38 = X(:,39:39); x39 = X(:,40:40); x40 = X(:,41:41);
x41 = X(:,42:42); x42 = X(:,43:43); x43 = X(:,44:44); x44 = X(:,45:45);
x45 = X(:,46:46); x46 = X(:,47:47);
%-------------------------------------------------------------------------
figure;
a1 = subplot(4,4,1);
plot(dateN,x33, 'LineWidth',2, 'Color',[1 0.411764705882353 0.16078431372549])
datetick('x','yyyy','keepticks')
xlim([715511 737061]);
set(a1,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t1 = title(a1,'L01', 'Interpreter', 'latex', 'FontSize', 14);

a2 = subplot(4,4,2);
plot(dateN,x34, 'LineWidth',2, 'Color',[1 0.411764705882353 0.16078431372549]);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a2,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t2 = title(a2,'L02', 'Interpreter', 'latex', 'FontSize', 14);

a3 = subplot(4,4,3);
plot(dateN,x35, 'LineWidth',2, 'Color',[1 0.411764705882353 0.16078431372549]);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a3,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
t3 = title(a3,'L03', 'Interpreter', 'latex', 'FontSize', 14);
recessionplot;

a4 = subplot(4,4,4);
plot(dateN,x36, 'LineWidth',2, 'Color',[1 0.411764705882353 0.16078431372549]);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a4,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t4 = title(a4,'L04', 'Interpreter', 'latex', 'FontSize', 14);
%--------------------------------------------------------------------------
a5 = subplot(4,4,5);
plot(dateN,x37, 'LineWidth',2, 'Color',[1 0.411764705882353 0.16078431372549])
datetick('x','yyyy','keepticks')
xlim([715511 737061]);
set(a5,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t5 = title(a5,'L05', 'Interpreter', 'latex', 'FontSize', 14);

a6 = subplot(4,4,6);
plot(dateN,x38, 'LineWidth',2, 'Color',[1 0.411764705882353 0.16078431372549]);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a6,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t6 = title(a6,'L06', 'Interpreter', 'latex', 'FontSize', 14);

a7 = subplot(4,4,7);
plot(dateN,x39, 'LineWidth',2,'Color',[1 0.411764705882353 0.16078431372549])
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a7,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t7 = title(a7,'L07', 'Interpreter', 'latex', 'FontSize', 14);


a8 = subplot(4,4,8);
plot(dateN,x40, 'LineWidth',2, 'Color',[1 0.411764705882353 0.16078431372549]);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a8,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t8 = title(a8,'L08', 'Interpreter', 'latex', 'FontSize', 14);
%--------------------------------------------------------------------------

a9 = subplot(4,4,9);
plot(dateN,x41, 'LineWidth',2, 'Color',[1 0.411764705882353 0.16078431372549])
datetick('x','yyyy','keepticks')
xlim([715511 737061]);
set(a9,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t9 = title(a9,'L09', 'Interpreter', 'latex', 'FontSize', 14);

a10 = subplot(4,4,10);
plot(dateN,x42, 'LineWidth',2, 'Color',[1 0.411764705882353 0.16078431372549]);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a10,'XTick',...
     [715511 718798 722451 726103 729756 733408 737061],...
     'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
t10 = title(a10,'L10', 'Interpreter', 'latex', 'FontSize', 14);
recessionplot;

a11 = subplot(4,4,11);
plot(dateN,x43, 'LineWidth',2, 'Color',[1 0.411764705882353 0.16078431372549])
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a11,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t11 = title(a11,'L11', 'Interpreter', 'latex', 'FontSize', 14);


a12 = subplot(4,4,12);
plot(dateN,x44, 'LineWidth',2, 'Color',[1 0.411764705882353 0.16078431372549]);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a12,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t12 = title(a12,'L12', 'Interpreter', 'latex', 'FontSize', 14);
%--------------------------------------------------------------------------

a13 = subplot(4,4,14);
plot(dateN,x45, 'LineWidth',2, 'Color',[1 0.411764705882353 0.16078431372549])
datetick('x','yyyy','keepticks')
xlim([715511 737061]);
set(a13,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t13 = title(a13,'L13', 'Interpreter', 'latex', 'FontSize', 14);

a14 = subplot(4,4,15);
plot(dateN,x46, 'LineWidth',2, 'Color',[1 0.411764705882353 0.16078431372549]);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a14,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t14 = title(a14,'L14', 'Interpreter', 'latex', 'FontSize', 14);

%--------------------------------------------------------------------------

t.Padding = 'none';
t.TileSpacing = 'none';


set(gcf,'PaperUnits','centimeters','PaperSize',[44 26]); %[x y]
set(gcf,'PaperPosition',[-6.4 -2.5 55 30]); %[left bottom width height]
print(gcf,'-dpdf','C:\Users\Nith Kosal\Documents\Kosal Documents\Research Projects\2020\2020_01\Paper\Figure\Figure5.pdf');
