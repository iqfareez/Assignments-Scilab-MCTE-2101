clc()
clear
clf

R2 = 5; //Constant radius

h = gca();
h.data_bounds = [-5, -5; 5, 5]; //specify boundary

for angle = 1:5:360

    R1 = R2*cosd(angle)
    R3 = R2*sind(angle)
    
    b=plot([R1, 0], [0,0] ,[R1, R1],[0, R3], [0, R1], [0, R3] , 'LineWidth', 3)
    legend(["R1"; "R3"; "R2"])
    xtitle("Position of all links when rotated 360 degrees");
    
    sleep(60)
    delete(b)

end
