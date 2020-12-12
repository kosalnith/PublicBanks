clear

cd "/Users/Nith Kosal/Documents/Kosal Documents/Research Projects/2020/2020_01/Data/"
use "AgriculturalData.dta"

//1. Statistics Descriptive: Independent Variables
global xlist ca01 cy01 cp01 ca02 cy02 cp02 ca03 cy03 cp03 ca04 cy04 cp04 cp05 cp06 ca07 cy07 cp07 ca08 cy08 cp08 cp09 ca10 cp10 ca11 cy11 cp11 ca12 cy12 cp12 ca13 cy13 cp13 ca14 cy14 cp14 ca15 cy15 cp15 ca16 cy16 cp16 ca17 cy17 cp17 ca18 cy18 cp18 ca19 cy19 cp19 ca20 cy20 cp20 ca21 cy21 cp21 ca22 cy22 cp22 ca23 cy23 cp23 ca24 cy24 cp24 ca25 cy25 cp25 ca26 cy26 cp26 ca27 cy27 cp27 ca28 cy28 cp28 ca29 cy29 cp29 ca30 cy30 cp30 ca31 cy31 cp31 ca32 cy32 cp32 ly01 ll01 lp01 ly02 ll02 lp02 ly03 ll03 lp03 ly04 ll04 lp04 ly05 ll05 lp05 ly06 ll06 lp06 ly07 ll07 lp07 ly08 ll08 lp08 ly09 ll09 lp09 ly10 ll10 lp10 ly11 ll11 lp11 ly12 ll12 lp12 lp13 ly14 ll14 lp14

quietly estpost sum $xlist, 
esttab, cell("min mean max sd")
*quietly esttab using statistics1.tex, cell((min(fmt(%10.2f)) mean(fmt(%10.2f)) max(fmt(%10.2f)) sd(fmt(%10.2f)))) 

quietly estpost sum cindex lindex agriland landirrigation tractors fertilizer pesticides employment temperature ncsagri gfcfagri creditagri rdbfunds technicalgrants foreignaid fdiagri vaagri vaworker cfcagri fce taxes
esttab, cell("min mean max sd") 
*quietly esttab using statistics2.tex, cell((min(fmt(%10.2f)) mean(fmt(%10.2f)) max(fmt(%10.2f)) sd(fmt(%10.2f))))

*-------------------------------------------------------------------------------*

//2. The Regression Model 
	*2.1. Crop Production in the Two-Step GMM Model
quietly global xlist landirrigation tractors fertilizer pesticides employment temperature ncsagri gfcfagri creditagri rdbfunds technicalgrants foreignaid fdiagri vaagri vaworker cfcagri fce taxes


quietly ivreg2 c01 $xlist (cindex = agriland ca01 cy01 cp01), gmm2s robust
 estimates store Mlc1
 
quietly ivreg2 c02 $xlist (cindex = agriland ca02 cy02 cp02), gmm2s robust
 estimates store Mlc2
 
quietly ivreg2 c03 $xlist (cindex = agriland ca03 cy03 cp03), gmm2s robust
 estimates store Mlc3
 
quietly ivreg2 c04 $xlist (cindex = agriland ca04 cy04 cp04), gmm2s robust
 estimates store Mlc4
 
quietly ivreg2 c05 $xlist (cindex = agriland cp05), gmm2s robust
 estimates store Mlc5
 
quietly ivreg2 c06 $xlist (cindex = agriland cp06), gmm2s robust
 estimates store Mlc6
 
quietly ivreg2 c07 $xlist (cindex = agriland ca07 cy07 cp07), gmm2s robust
 estimates store Mlc7
 
quietly ivreg2 c08 $xlist (cindex = agriland ca08 cy08 cp08), gmm2s robust
 estimates store Mlc8
 
quietly ivreg2 c09 $xlist (cindex = agriland cp09), gmm2s robust
 estimates store Mlc9
 
quietly ivreg2 c10 $xlist (cindex = agriland ca10 cp10), gmm2s robust
 estimates store Mlc10
 
quietly ivreg2 c11 $xlist (cindex = agriland ca11 cy11 cp11), gmm2s robust
 estimates store Mlc11

quietly ivreg2 c12 $xlist (cindex = agriland ca12 cy12 cp12), gmm2s robust
 estimates store Mlc12
 
quietly ivreg2 c13 $xlist (cindex = agriland ca13 cy13 cp13), gmm2s robust
 estimates store Mlc13
 
quietly ivreg2 c14 $xlist (cindex = agriland ca14 cy14 cp14), gmm2s robust
 estimates store Mlc14
 
quietly ivreg2 c15 $xlist (cindex = agriland ca15 cy15 cp15), gmm2s robust
 estimates store Mlc15
 
quietly ivreg2 c16 $xlist (cindex = agriland ca16 cy16 cp16), gmm2s robust
 estimates store Mlc16
 
quietly ivreg2 c17 $xlist (cindex = agriland ca17 cy17 cp17), gmm2s robust
 estimates store Mlc17
 
quietly ivreg2 c18 $xlist (cindex = agriland ca18 cy18 cp18), gmm2s robust
 estimates store Mlc18
 
quietly ivreg2 c19 $xlist (cindex = agriland ca19 cy19 cp19), gmm2s robust
 estimates store Mlc19
 
quietly ivreg2 c20 $xlist (cindex = agriland ca20 cy20 cp20), gmm2s robust
 estimates store Mlc20
 
quietly ivreg2 c21 $xlist (cindex = agriland ca21 cy21 cp21), gmm2s robust
 estimates store Mlc21
 
quietly ivreg2 c22 $xlist (cindex = agriland ca22 cy22 cp22), gmm2s robust
 estimates store Mlc22

quietly ivreg2 c23 $xlist (cindex = agriland ca23 cy23 cp23), gmm2s robust
 estimates store Mlc23
 
quietly ivreg2 c24 $xlist (cindex = agriland ca24 cy24 cp24), gmm2s robust
 estimates store Mlc24
 
quietly ivreg2 c25 $xlist (cindex = agriland ca25 cy25 cp25), gmm2s robust
 estimates store Mlc25
 
quietly ivreg2 c26 $xlist (cindex = agriland ca26 cy26 cp26), gmm2s robust
 estimates store Mlc26
 
quietly ivreg2 c27 $xlist (cindex = agriland ca27 cy27 cp27), gmm2s robust
 estimates store Mlc27
 
quietly ivreg2 c28 $xlist (cindex = agriland ca28 cy28 cp28), gmm2s robust
 estimates store Mlc28
 
quietly ivreg2 c29 $xlist (cindex = agriland ca29 cy29 cp29), gmm2s robust
 estimates store Mlc29
 
quietly ivreg2 c20 $xlist (cindex = agriland ca30 cy30 cp30), gmm2s robust
 estimates store Mlc30
 
quietly ivreg2 c31 $xlist (cindex = agriland ca31 cy31 cp31), gmm2s robust
 estimates store Mlc31
 
quietly ivreg2 c32 $xlist (cindex = agriland ca32 cy32 cp32), gmm2s robust
 estimates store Mlc32
 
***--------------------------------------------------------------------------*** 
* Combien all of the regression in the 2SLS and the Two-Step GMM together 
global xlist Mlc1 Mlc2 Mlc3 Mlc4 Mlc5 Mlc6 Mlc7 Mlc8 Mlc9 Mlc10 Mlc11 Mlc12 Mlc13 Mlc14 Mlc15 Mlc16 Mlc17 Mlc18 Mlc19 Mlc20 Mlc21 Mlc22 Mlc23 Mlc24 Mlc25 Mlc26 Mlc27 Mlc28 Mlc29 Mlc30 Mlc31 Mlc32

quietly esttab $xlist using Result1.tex, replace b(%10.4f) se scalars(N r2 jp)

**-----------------------------------------------------------------------------** 
 
	*2.2. Livestock Production in the Two-Step GMM Model
quietly global xlist employment temperature ncsagri gfcfagri creditagri rdbfunds technicalgrants foreignaid fdiagri vaagri vaworker cfcagri fce taxes


quietly ivreg2 l01 $xlist (lindex = agriland lp01), gmm2s robust
 estimates store Ml1

quietly ivreg2 l02 $xlist (lindex = agriland lp02), gmm2s robust
 estimates store Ml2

quietly ivreg2 l03 $xlist (lindex = agriland ly03 ll03 lp03), gmm2s robust
 estimates store Ml3

quietly ivreg2 l04 $xlist (lindex = agriland ly04 ll04 lp04), gmm2s robust
 estimates store Ml4

quietly ivreg2 l05 $xlist (lindex = agriland ly05 ll05 lp05), gmm2s robust
 estimates store Ml5
 
quietly ivreg2 l06 $xlist (lindex = agriland ly06 ll06 lp06), gmm2s robust
 estimates store Ml6
 
quietly ivreg2 l07 $xlist (lindex = agriland lp07), gmm2s robust
 estimates store Ml7
 
quietly ivreg2 l08 $xlist (lindex = agriland ly08 ll08 lp08), gmm2s robust
 estimates store Ml8
 
quietly ivreg2 l09 $xlist (lindex = agriland ly09 ll09 lp09), gmm2s robust
 estimates store Ml9
 
quietly ivreg2 l10 $xlist (lindex = agriland ly10 ll10 lp10), gmm2s robust
 estimates store Ml10 
 
quietly ivreg2 l11 $xlist (lindex = agriland ly11 ll11 lp11), gmm2s robust
 estimates store Ml11
 
quietly ivreg2 l12 $xlist (lindex = agriland ly12 ll12 lp12), gmm2s robust
 estimates store Ml12
 
quietly ivreg2 l13 $xlist (lindex = agriland lp13), gmm2s robust
 estimates store Ml13
 
quietly ivreg2 l14 $xlist (lindex = agriland ly14 ll14 lp14), gmm2s robust
 estimates store Ml14
***--------------------------------------------------------------------------***
* Combien all of the regression in the 2SLS and the Two-Step GMM together 
global xlist Ml1 Ml2 Ml3 Ml4 Ml5 Ml6 Ml7 Ml8 Ml9 Ml10 Ml11 Ml12 Ml13 Ml14 

quietly esttab $xlist using Result6.csv, replace se scalars(N r2 jp)
***--------------------------------------------------------------------------***
 
 tset
       
. predict uhat, r

. tsline uhat

.  tsline uhat if e(sample)==1, yline(0)
estat overid stores

 
