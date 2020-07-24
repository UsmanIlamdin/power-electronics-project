function F = set_of_equations(x)
F = zeros(1,4);
F(1) = cosd(x(1)) + cosd(x(2)) + cosd(x(3)) + cosd(x(4)) - 3.2;
F(2) = cosd(5*x(1)) + cosd(5*x(2)) + cosd(5*x(3)) + cosd(5*x(4));
F(3) = cosd(7*x(1)) + cosd(7*x(2)) + cosd(7*x(3)) + cosd(7*x(4));
F(4) = cosd(11*x(1)) + cosd(11*x(2)) + cosd(11*x(3)) + cosd(11*x(4));