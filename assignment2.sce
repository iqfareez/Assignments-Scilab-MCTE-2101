clc()
clear
clf

// for theta = 1:10:360
//     delete()
//     h = gca();
//     h.data_bounds = [-5, -5; 5, 5];
//     R2 = 5;
//     R1 = R2 * cosd(theta)
//     R3 = R2 * sind(theta)

//     plot(R1, R2, R3, 'LineWidth', 3)
//     sleep(30)
// end


a = 5;
theta = 20;


for i = 1:10:360
    
    h = gca();
    h.data_bounds = [-5, -5; 5, 5];
    // plot([0, P2(1)], P1, P3,P1, 'LineWidth', 3);

    R2 = a;
    R1 = R2*cosd(i)
    R3 = R2*sind(i)
    mR2 = R3/R1
    
    plot([R1, 0], [0,0] ,[R1, R1],[0, R3], [0, R1], [0, R3] , 'LineWidth', 3);
    
    sleep(100)
    delete()

end



// Theta = 0;
// R2 = 10;
// R1 = R2*cos(Theta);
// R3 = R2*sin(Theta);

// figure(0)


// plot(R1, R2, R2, R3, R3, R1, 'LineWidth', 3);
// title("A good title");
// ylabel("ylabel");
// xlabel("xlabel");

// for i = 1:1:360
//     plot()
//     // disp(i);
//     // delete()
//     // h = gca(); //get current axes
//     // h.data_bounds = [-5,-5;5,5];
    
//     title("Scotch Yoke Mechanism");
//     ylabel('ylabel'),
//     xlabel('xlabel')

//     sleep(30)
// end
