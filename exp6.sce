
clc;
clear;
s = s;
t
0:0.01:10;
disp("For-Gl:")
G1 = syslin ("c", 1, s* (s+5)* (s+10)); disp (G1);
evans (G1,750);
xgrid();
//sgrid();
[Km, sm]kpure (G1);
[kbap, sbap] krac2 (G1); disp("K-Marginal", Km);
disp("Intersection-with-imagnary-axis", sm);
disp ("Break-away-point", sbap); disp("Respective K-value-for-BAP", kbap);
show_window (1) - disp("For-G2")
G2 = syslin ("c", (s+1), s* (s+5)*(s+10));
disp (G2);
evans (G2);
xgrid();
//sgrid();
[Km, sm]
kpure (G2);
[kbap, sbap]=- krac2(G2);
disp("K-Marginal", Km);
disp("Intersection-with-imagnary-axis", sm);
disp("Break-away-point", sbap);
disp("Respective K-value-for-BAP", kbap);
show_window (2)
disp("For-G3")
G3 syslin ("c",1,s* (s+5) (s+10) (s+1)); 
