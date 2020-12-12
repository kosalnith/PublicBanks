% Power Market: HHI
clear
close all;
clc

% Building Dataset 
[tempData,tempText]=xlsread('Production.xlsx','H Index');
data = tempData(1:end,1:end);
dataName = tempText(1,1:end);
dataDescription = tempText(1,1:end);

y1959 = data(1:end,1);
y1974 = data(1:end,2);
y1989 = data(1:end,3);
y2004 = data(1:end,4); 
y2018 = data(1:end,5);

% HHI Model
i1959 = concentrationIndices(y1959);
i1974 = concentrationIndices(y1974);
i1989 = concentrationIndices(y1989);
i2004 = concentrationIndices(y2004);
i2018 = concentrationIndices(y2018);

% Crop Diversity Index 
[d1,t1]=xlsread('Production.xlsx','LandCrop');
s1 = nansum(d1);

c1 = d1(:,1)/s1(:,1); c01 = log(c1); c001 = c1.*c01; c1989 = nansum(abs(c001));
c2 = d1(:,2)/s1(:,2); c02 = log(c2); c002 = c2.*c02; c1990 = nansum(abs(c002));
c3 = d1(:,3)/s1(:,3); c03 = log(c3); c003 = c3.*c03; c1991 = nansum(abs(c003));
c4 = d1(:,4)/s1(:,4); c04 = log(c4); c004 = c4.*c04; c1992 = nansum(abs(c004));
c5 = d1(:,5)/s1(:,5); c05 = log(c5); c005 = c5.*c05; c1993 = nansum(abs(c005));
c6 = d1(:,6)/s1(:,6); c06 = log(c6); c006 = c6.*c06; c1994 = nansum(abs(c006));
c7 = d1(:,7)/s1(:,7); c07 = log(c7); c007 = c7.*c07; c1995 = nansum(abs(c007));
c8 = d1(:,8)/s1(:,8); c08 = log(c8); c008 = c8.*c08; c1996 = nansum(abs(c008));
c9 = d1(:,9)/s1(:,9); c09 = log(c9); c009 = c9.*c09; c1997 = nansum(abs(c009));
c10 = d1(:,10)/s1(:,10); c010 = log(c10); c0010 = c10.*c010; c1998 = nansum(abs(c0010));
c11 = d1(:,11)/s1(:,11); c011 = log(c11); c0011 = c11.*c011; c1999 = nansum(abs(c0011));
c12 = d1(:,12)/s1(:,12); c012 = log(c12); c0012 = c12.*c012; c2000 = nansum(abs(c0012));
c13 = d1(:,13)/s1(:,13); c013 = log(c13); c0013 = c13.*c013; c2001 = nansum(abs(c0013));
c14 = d1(:,14)/s1(:,14); c014 = log(c14); c0014 = c14.*c014; c2002 = nansum(abs(c0014));
c15 = d1(:,15)/s1(:,15); c015 = log(c15); c0015 = c15.*c015; c2003 = nansum(abs(c0015));
c16 = d1(:,16)/s1(:,16); c016 = log(c16); c0016 = c16.*c016; c2004 = nansum(abs(c0016));
c17 = d1(:,17)/s1(:,17); c017 = log(c17); c0017 = c17.*c017; c2005 = nansum(abs(c0017));
c18 = d1(:,18)/s1(:,18); c018 = log(c18); c0018 = c18.*c018; c2006 = nansum(abs(c0018));
c19 = d1(:,19)/s1(:,19); c019 = log(c19); c0019 = c19.*c019; c2007 = nansum(abs(c0019));
c20 = d1(:,20)/s1(:,20); c020 = log(c20); c0020 = c20.*c020; c2008 = nansum(abs(c0020));
c21 = d1(:,21)/s1(:,21); c021 = log(c21); c0021 = c21.*c021; c2009 = nansum(abs(c0021));
c22 = d1(:,22)/s1(:,22); c022 = log(c22); c0022 = c22.*c022; c2010 = nansum(abs(c0022));
c23 = d1(:,23)/s1(:,23); c023 = log(c23); c0023 = c23.*c023; c2011 = nansum(abs(c0023));
c24 = d1(:,24)/s1(:,24); c024 = log(c24); c0024 = c24.*c024; c2012 = nansum(abs(c0024));
c25 = d1(:,25)/s1(:,25); c025 = log(c25); c0025 = c25.*c025; c2013 = nansum(abs(c0025));
c26 = d1(:,26)/s1(:,26); c026 = log(c26); c0026 = c26.*c026; c2014 = nansum(abs(c0026));
c27 = d1(:,27)/s1(:,27); c027 = log(c27); c0027 = c27.*c027; c2015 = nansum(abs(c0027));
c28 = d1(:,28)/s1(:,28); c028 = log(c28); c0028 = c28.*c028; c2016 = nansum(abs(c0028));
c29 = d1(:,29)/s1(:,29); c029 = log(c29); c0029 = c29.*c029; c2017 = nansum(abs(c0029));
c30 = d1(:,30)/s1(:,30); c030 = log(c30); c0030 = c30.*c030; c2018 = nansum(abs(c0030));

% Livestock Diversity Index
[d2,t2]=xlsread('Production.xlsx','LandLivestock');
s2 = nansum(d2);

l1 = d2(:,1)/s2(:,1); l01 = log(l1); l001 = l1.*l01; l1989 = nansum(abs(l001));
l2 = d2(:,2)/s2(:,2); l02 = log(l2); l002 = l2.*l02; l1990 = nansum(abs(l002));
l3 = d2(:,3)/s2(:,3); l03 = log(l3); l003 = l3.*l03; l1991 = nansum(abs(l003));
l4 = d2(:,4)/s2(:,4); l04 = log(l4); l004 = l4.*l04; l1992 = nansum(abs(l004));
l5 = d2(:,5)/s2(:,5); l05 = log(l5); l005 = l5.*l05; l1993 = nansum(abs(l005));
l6 = d2(:,6)/s2(:,6); l06 = log(l6); l006 = l6.*l06; l1994 = nansum(abs(l006));
l7 = d2(:,7)/s2(:,7); l07 = log(l7); l007 = l7.*l07; l1995 = nansum(abs(l007));
l8 = d2(:,8)/s2(:,8); l08 = log(l8); l008 = l8.*l08; l1996 = nansum(abs(l008));
l9 = d2(:,9)/s2(:,9); l09 = log(l9); l009 = l9.*l09; l1997 = nansum(abs(l009));
l10 = d2(:,10)/s2(:,10); l010 = log(l10); l0010 = l10.*l010; l1998 = nansum(abs(l0010));
l11 = d2(:,11)/s2(:,11); l011 = log(l11); l0011 = l11.*l011; l1999 = nansum(abs(l0011));
l12 = d2(:,12)/s2(:,12); l012 = log(l12); l0012 = l12.*l012; l2000 = nansum(abs(l0012));
l13 = d2(:,13)/s2(:,13); l013 = log(l13); l0013 = l13.*l013; l2001 = nansum(abs(l0013));
l14 = d2(:,14)/s2(:,14); l014 = log(l14); l0014 = l14.*l014; l2002 = nansum(abs(l0014));
l15 = d2(:,15)/s2(:,15); l015 = log(l15); l0015 = l15.*l015; l2003 = nansum(abs(l0015));
l16 = d2(:,16)/s2(:,16); l016 = log(l16); l0016 = l16.*l016; l2004 = nansum(abs(l0016));
l17 = d2(:,17)/s2(:,17); l017 = log(l17); l0017 = l17.*l017; l2005 = nansum(abs(l0017));
l18 = d2(:,18)/s2(:,18); l018 = log(l18); l0018 = l18.*l018; l2006 = nansum(abs(l0018));
l19 = d2(:,19)/s2(:,19); l019 = log(l19); l0019 = l19.*l019; l2007 = nansum(abs(l0019));
l20 = d2(:,20)/s2(:,20); l020 = log(l20); l0020 = l20.*l020; l2008 = nansum(abs(l0020));
l21 = d2(:,21)/s2(:,21); l021 = log(l21); l0021 = l21.*l021; l2009 = nansum(abs(l0021));
l22 = d2(:,22)/s2(:,22); l022 = log(l22); l0022 = l22.*l022; l2010 = nansum(abs(l0022));
l23 = d2(:,23)/s2(:,23); l023 = log(l23); l0023 = l23.*l023; l2011 = nansum(abs(l0023));
l24 = d2(:,24)/s2(:,24); l024 = log(l24); l0024 = l24.*l024; l2012 = nansum(abs(l0024));
l25 = d2(:,25)/s2(:,25); l025 = log(l25); l0025 = l25.*l025; l2013 = nansum(abs(l0025));
l26 = d2(:,26)/s2(:,26); l026 = log(l26); l0026 = l26.*l026; l2014 = nansum(abs(l0026));
l27 = d2(:,27)/s2(:,27); l027 = log(l27); l0027 = l27.*l027; l2015 = nansum(abs(l0027));
l28 = d2(:,28)/s2(:,28); l028 = log(l28); l0028 = l28.*l028; l2016 = nansum(abs(l0028));
l29 = d2(:,29)/s2(:,29); l029 = log(l29); l0029 = l29.*l029; l2017 = nansum(abs(l0029));
l30 = d2(:,30)/s2(:,30); l030 = log(l30); l0030 = l30.*l030; l2018 = nansum(abs(l0030));