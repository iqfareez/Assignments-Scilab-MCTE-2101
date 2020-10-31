clc()
clear
clf

a = 5;

for i = 1:5:360

    h = gca();
    h.data_bounds = [-5, -5; 5, 5]; //specify boundary

    R2 = a;
    R1 = R2*cosd(i)
    R3 = R2*sind(i)
    
    b=plot([R1, 0], [0,0] ,[R1, R1],[0, R3], [0, R1], [0, R3] , 'LineWidth', 3)
    legend(["R1"; "R3"; "R2"])
    xtitle("Position of all links when rotated 360 degrees");
    
    
    sleep(60)
    delete(b)

end

