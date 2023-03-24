disp('Name : Aniket Supekar , Gr.No. 22110125 , Roll No. 213045 , Batch : C2 , Experiment 3 : 1st and 2nd order system response with time domain specifications ');

// Declaring variables
s = %s;
t = 0:0.01:5;
xlabel('time');
ylabel('output');
title('response');

// Second order
G = syslin('c',25/((s^2)+(3*s)+25)); // Defined continues time system
disp('G is :' , G);
wn = 4;
d = 0.4;
wd = wn*sqrt((1-d^2));
td = (1+0.7*d)/wn; 

Q = acos(d);
tr = (%pi - Q)/wd;
tp = %pi/wd;
ts = 4/(d*wn);
Mp = exp(-(d * %pi)/sqrt((1-d^2)));
disp('wn is :' , wn);
disp('wd is :' , wd);
disp('Rise time : ' , tr);
disp('Peak time : ' , tp);
disp('Settling time : ' , ts);
disp('Peak , maximum overshoot : ' , Mp);

C1 = csim('step' , t, G); // csim applies the step test
plot2d(t,C1,style=1); // plot2d produces the graphical output

// First order with time step 2
G1 = syslin('c' , 5/((2*s)+1));
disp('G1 ia : ' , G1);
C2 = csim('step' , t , G1);
plot2d(t,C2,style=5);

// First order with time step 5
G2 = syslin('c' , 5/((5*s)+1));
disp('G2 ia : ' , G2);
C3 = csim('step' , t , G2);
plot2d(t,C3,style=6);

legend('0.5' , '2' , '5');
xgrid;














