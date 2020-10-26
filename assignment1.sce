clc()
clear
clf

k = 1;
b = 0.2;
m = 1;

A = [0 1; -k/m -b/m];
B = [0;1/m];
C = [1 0];
D = [0];

//run in GUI console --> `exec("assignment1.sce", 3)` on working directory