clear;
clc;
disp('Name : Aniket Supekar , Gr.No. 22110125 , Roll No. 213045 , Batch : C2 , Calculate transfer function of system.');
s=poly(0,'s');
g1=24/((s+2)*(s+3)*(s+4))
disp('Transfer function of g1 is ',g1);
g2=25/(s^2+20*s+25)
disp('Transfer function of g1 is ',g2);
g3=254/((s+6)*(s+9))
disp('Transfer function of g1 is ',g3);
