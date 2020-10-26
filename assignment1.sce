clc()
clear
clf

// SYSTEM 1
k1 = 1; //spring stiffness
b1 = 0.2; //damping coefficient
m1 = 1; //mass

A1 = [0 1; -k1/m1 -b1/m1];
B1 = [0;1/m1];
C1 = [1 0];
D1 = [0];

S1 = syslin('c', A1, B1, C1 );
t = linspace(0,100,100) //from 0 to 10000, 1000 linearly spaced
y1 = csim('step', t, S1)

//SYSTEM 2
k2 = 2; //spring stiffness
b2 = 0.2; //damping coefficient
m2 = 1; //mass

A2 = [0 1; -k2/m2 -b2/m2];
B2 = [0;1/m2];
C2 = [1 0];
D2 = [0];

S2 = syslin('c', A2, B2, C2);
y2 = csim('step', t, S2)

//PLOTING BOTH GRAPH
plot(t, y1, t, y2, 'LineWidth', 3)
xtitle("Unit step response of the SDOF system", "fontsize", "5")
xlabel('Time, t', 'fontsize' ,3)
ylabel('Response, y(t)', 'fontsize', 3)
legend([' k = ' + string(k1) + ' N/m, b = ' + string(b1) + ' N.s/m and m = ' + string(m1) + ' kg';' k = ' + string(k2) + ' N/m, b = ' + string(b2) + ' N.s/m and m = ' + string(m2) + ' kg']);
