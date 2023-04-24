clc;
clear;
disp('Name : Aniket Supekar, Roll No:213045, PRN NO:22110125, Exp7:Bode plot');
s = %s;
t = 0:0.01:10;
close(winsid());
G = syslin('c',10^(s+30),(s+1)*(s+2)*(s+20);
disp('G:',G);
[km,sm]=kpure(G);
bode(G);
show_margins(G);
[GM,Wpc]=g_margin(G);
[PM,Wgc]=p_margin(G);
disp('Gain margin',GM);
disp('Phase margin',PM);
disp('Gain crossover frequency',Wgc);
disp('Phase crossover frequency',Wpc);