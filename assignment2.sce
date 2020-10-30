clc()
clear
clf

a = 5;
theta = 20;


for i = 1:10:360

    h = gca();
    h.data_bounds = [-5, -5; 5, 5]; //specify boundary

    R2 = a;
    R1 = R2*cosd(i)
    R3 = R2*sind(i)
    mR2 = R3/R1
    
    plot([R1, 0], [0,0] ,[R1, R1],[0, R3], [0, R1], [0, R3] , 'LineWidth', 3);
    
    sleep(100)
    delete()

end
