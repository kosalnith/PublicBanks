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
a1 = subplot(8,4,1);
plot(dateN,x1, 'LineWidth',2)
datetick('x','yyyy','keepticks')
xlim([715511 737061]);
set(a1,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t1 = title(a1,'C01', 'Interpreter', 'latex', 'FontSize', 14);

a2 = subplot(8,4,2);
plot(dateN,x2, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a2,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t2 = title(a2,'C02', 'Interpreter', 'latex', 'FontSize', 14);

a3 = subplot(8,4,3);
plot(dateN,x3, 'LineWidth',2)
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a3,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t3 = title(a3,'C03', 'Interpreter', 'latex', 'FontSize', 14);

a4 = subplot(8,4,4);
plot(dateN,x4, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a4,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t4 = title(a4,'C04', 'Interpreter', 'latex', 'FontSize', 14);
%--------------------------------------------------------------------------
a5 = subplot(8,4,5);
plot(dateN,x5, 'LineWidth',2)
datetick('x','yyyy','keepticks')
xlim([715511 737061]);
set(a5,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t5 = title(a5,'C05', 'Interpreter', 'latex', 'FontSize', 14);

a6 = subplot(8,4,6);
plot(dateN,x6, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a6,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t6 = title(a6,'C06', 'Interpreter', 'latex', 'FontSize', 14);

a7 = subplot(8,4,7);
plot(dateN,x7, 'LineWidth',2)
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a7,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t7 = title(a7,'C07', 'Interpreter', 'latex', 'FontSize', 14);


a8 = subplot(8,4,8);
plot(dateN,x8, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a8,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t8 = title(a8,'C08', 'Interpreter', 'latex', 'FontSize', 14);
%--------------------------------------------------------------------------

a9 = subplot(8,4,9);
plot(dateN,x9, 'LineWidth',2)
datetick('x','yyyy','keepticks')
xlim([715511 737061]);
set(a9,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t9 = title(a9,'C09', 'Interpreter', 'latex', 'FontSize', 14);

a10 = subplot(8,4,10);
plot(dateN,x10, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a10,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t10 = title(a10,'C10', 'Interpreter', 'latex', 'FontSize', 14);

a11 = subplot(8,4,11);
plot(dateN,x11, 'LineWidth',2)
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a11,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t11 = title(a11,'C11', 'Interpreter', 'latex', 'FontSize', 14);


a12 = subplot(8,4,12);
plot(dateN,x12, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a12,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t12 = title(a12,'C12', 'Interpreter', 'latex', 'FontSize', 14);
%--------------------------------------------------------------------------

a13 = subplot(8,4,13);
plot(dateN,x13, 'LineWidth',2)
datetick('x','yyyy','keepticks')
xlim([715511 737061]);
set(a13,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t13 = title(a13,'C13', 'Interpreter', 'latex', 'FontSize', 14);

a14 = subplot(8,4,14);
plot(dateN,x14, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a14,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t14 = title(a14,'C14', 'Interpreter', 'latex', 'FontSize', 14);

a15 = subplot(8,4,15);
plot(dateN,x15, 'LineWidth',2)
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a15,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t15 = title(a15,'C15', 'Interpreter', 'latex', 'FontSize', 14);


a16 = subplot(8,4,16);
plot(dateN,x16, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a16,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t16 = title(a16,'C16', 'Interpreter', 'latex', 'FontSize', 14);

%--------------------------------------------------------------------------

a17 = subplot(8,4,17);
plot(dateN,x17, 'LineWidth',2)
datetick('x','yyyy','keepticks')
xlim([715511 737061]);
set(a17,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t17 = title(a17,'C17', 'Interpreter', 'latex', 'FontSize', 14);

a18 = subplot(8,4,18);
plot(dateN,x18, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a18,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t18 = title(a18,'C18', 'Interpreter', 'latex', 'FontSize', 14);

a19 = subplot(8,4,19);
plot(dateN,x19, 'LineWidth',2)
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a19,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t19 = title(a19,'C19', 'Interpreter', 'latex', 'FontSize', 14);


a20 = subplot(8,4,20);
plot(dateN,x20, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a20,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t20 = title(a20,'C20', 'Interpreter', 'latex', 'FontSize', 14);
%--------------------------------------------------------------------------

a21 = subplot(8,4,21);
plot(dateN,x21, 'LineWidth',2)
datetick('x','yyyy','keepticks')
xlim([715511 737061]);
set(a21,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t21 = title(a21,'C21', 'Interpreter', 'latex', 'FontSize', 14);

a22 = subplot(8,4,22);
plot(dateN,x22, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a22,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t22 = title(a22,'C22', 'Interpreter', 'latex', 'FontSize', 14);

a23 = subplot(8,4,23);
plot(dateN,x23, 'LineWidth',2)
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a23,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t23 = title(a23,'C23', 'Interpreter', 'latex', 'FontSize', 14);


a24 = subplot(8,4,24);
plot(dateN,x24, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a24,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t24 = title(a24,'C24', 'Interpreter', 'latex', 'FontSize', 14);
%-------------------------------------------------------------------------

a25 = subplot(8,4,25);
plot(dateN,x25, 'LineWidth',2)
datetick('x','yyyy','keepticks')
xlim([715511 737061]);
set(a25,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t25 = title(a25,'C25', 'Interpreter', 'latex', 'FontSize', 14);

a26 = subplot(8,4,26);
plot(dateN,x26, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a26,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t26 = title(a26,'C26', 'Interpreter', 'latex', 'FontSize', 14);

a27 = subplot(8,4,27);
plot(dateN,x27, 'LineWidth',2)
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a27,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t27 = title(a27,'C27', 'Interpreter', 'latex', 'FontSize', 14);


a28 = subplot(8,4,28);
plot(dateN,x28, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a28,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t28 = title(a28,'C28', 'Interpreter', 'latex', 'FontSize', 14);
%-------------------------------------------------------------------------

a29 = subplot(8,4,29);
plot(dateN,x29, 'LineWidth',2)
datetick('x','yyyy','keepticks')
xlim([715511 737061]);
set(a29,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t29 = title(a29,'C29', 'Interpreter', 'latex', 'FontSize', 14);

a30 = subplot(8,4,30);
plot(dateN,x30, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a30,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t30 = title(a30,'C30', 'Interpreter', 'latex', 'FontSize', 14);

a31 = subplot(8,4,31);
plot(dateN,x31, 'LineWidth',2)
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a31,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t31 = title(a31,'C31', 'Interpreter', 'latex', 'FontSize', 14);


a32 = subplot(8,4,32);
plot(dateN,x32, 'LineWidth',2);
datetick('x','yyyy','keepticks');
xlim([715511 737061]);
set(a32,'XTick',...
    [715511 718798 722451 726103 729756 733408 737061],...
    'XTickLabel',['1959';'1968';'1978'; '1988'; '1998';'2008'; '2018']);
recessionplot;
t32 = title(a32,'C32', 'Interpreter', 'latex', 'FontSize', 14);
%--------------------------------------------------------------------------

t.Padding = 'none';
t.TileSpacing = 'none';


set(gcf,'PaperUnits','centimeters','PaperSize',[42 48]); %[x y]
set(gcf,'PaperPosition',[-5.4 -5.7 51 57]); %[left bottom width height]
print(gcf,'-dpdf','C:\Users\Nith Kosal\Documents\Kosal Documents\Research Projects\2020\2020_01\Paper\Figure\Figure7.pdf');
