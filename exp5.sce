clear;clc;
disp('Name:Aniket Supekar  Roll No:213045  GR:22110125  Batch:C2 Study effect of location of poles on system stability');
t = 0:0.01:10;
s = %s;

//Complex conjugate system stable(LHS)
G = syslin('c',20,s^2+3*s+20);
c = csim('step',t,G);
N = G('num');
D = G('den');
z = coeff(D);
disp("roots of TF are" ,roots(D));
subplot(2,2,1)
plzr(G);
subplot(2,2,2)
xtitle("Complex conjugate system stable");
plot(t,c);
xgrid;

//Complex conjugate system unstable(RHS)
G1 = syslin('c',20,(s^2-3*s+20)^2);
c1 = csim('step',t,G1);
N1 = G1('num');
D1 = G('den');
z1 = coeff(D1);
disp("roots of TF are",roots(D1));
subplot(2,2,3)
plzr(G1);
subplot(2,2,4)
xtitle("Complex conjugate system unstable");
plot(t,c1);
xgrid;

//Real roots on LHS
show_window(1);
G2 = syslin('c',6,s^2+5*s+6);
c2 = csim('step',t,G2);
N2 = G2('num');
D2 = G2('den');
z = coeff(D2);
disp("roots of TF are",roots(D2));
subplot(2,2,1)
plzr(G2);
subplot(2,2,2)
xtitle("Real roots on LHS");
plot(t,c2);
xgrid;

//Real roots on RHS
G3 = syslin('c',6,s^2-5*s+6);
c3 = csim('step',t,G3);
N3 = G3('num');
D3 = G3('den');
z3 = coeff(D3);
disp("roots of TF are",roots(D3));
subplot(2,2,3)
plzr(G3);
subplot(2,2,4)
xtitle("Real roots on RHS");
plot(t,c3);
xgrid;

//Non-Repeated roots on imaginary axis
show_window(2);
G4 = syslin('c',20,s^2+20);
c4 = csim('step',t,G4);
N4 = G4('num');
D4 = G4('den');
z4 = coeff(D4);
disp("roots of TF are",roots(D4));
subplot(2,2,1)
plzr(G4);
subplot(2,2,2)
xtitle("Non-Repeated roots on imaginary axis");
plot(t,c4);
xgrid;

//Repeated roots on imaginary axis
G5 = syslin('c',20,(s^2+20)^2);
c5 = csim('step',t,G5);
N5 = G5('num');
D5 = G5('den');
z5 = coeff(D5);
disp("roots of TF are",roots(D5));
subplot(2,2,3)
plzr(G5);
subplot(2,2,4)
xtitle("Repeated roots on imaginary axis");
plot(t,c5);
xgrid;
