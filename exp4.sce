clear;
clc;
disp('Name:Aniket Supekar  Roll No:213045  GR:22110125  Batch:C2 Effect of variation of zeta on system response');
s=%s;
t=0:0.1:10;
wn=6;
zeta=0:0.1:0.35;
for n=1:4
    c(n,:)=csim('step',t,syslin('c',36,s^2+2*6*0.35*s+36))
end
xlabel('time');
ylabel('output');
title('response');
plot(t,c);
xgrid;
legend('zeta=0','0.1','0.2','0.35');
