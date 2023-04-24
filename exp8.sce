//PART1
clc;
clear;
disp('Name:Aniket Uday Supekar, Roll No:213045, PRN No:22110125, Exp8:State Space Representation');
A=[0.1 0 0 0 1; -5 -25 -5]
B=[0;25; -120]
C=[1 0 0]
D=0
s1=syslin ('c', A, B, C, D)
disp('State Space Representation of given system-is: ")
disp(s1)

eig_value = spec(A)
disp('Eigen values of system matrix-are-")
disp (eig_value)

g1=(ss2tf(s1))
disp ('Transfer function-representation of given system is.")
disp (g1)

//PART2
clc;
clear;

A=[-3 1;1 -3];
B=[1;2];
C=[2 3];
D=0;

sys=syslin('c', A, B, C, D)
disp('State Space Representation of given system is:')
disp (sys)
//Controllable canonical form
[Ac, Bc T] = canon (A, B)
T=flipdim (T,2);
Ac=T\A*T;
Bc=T\B;
CC=C*T;
Dc=D;
sysd=syslin ('c', Ac, Bc, Cc, Dc)
disp('State Space Representation of given system in controllable canonical-form: ")
disp (sysd)

//Paralel/Diagonal Form
[Ad M] = bdiag (A);
Bd=M\B;
Cd=C*M;
Dd=D;
sysc=syslin ('c', Ad, Bd, Cd, Dd)
disp('State Space Representation of given-system-in-diagonnal form:-')
disp(sysc) 
