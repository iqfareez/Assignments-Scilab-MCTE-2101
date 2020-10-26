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

S1 = syslin('c', A, B, C );
t = linspace(0,100,100)
y = csim('step', t, S1)

plot(t, y, 'LineWidth', 3)

xtitle("Unit step response of the SDOF system", "fontsize", "5")
xlabel('Time, t', 'fontsize' ,3)
ylabel('Response, y(t)', 'fontsize', 3)
legend([' k = 1 N/m, b = 0.2 N.s/m and m = 1 kg']);

//run in GUI console --> `exec("assignment1.sce", 3)` on working directory
