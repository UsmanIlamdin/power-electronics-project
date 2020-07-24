clear; clc;
% x = [9.8409   20.3828   38.4054   60.4164]
x0 = [6 22 38 60];
fun = @set_of_equations;
options = optimoptions('fsolve', 'MaxFunctionEvaluations', 20000, 'OptimalityTolerance', 1e-6, 'StepTolerance', 1e-6, 'MaxIterations', 2000, 'PlotFcn', @optimplotfval);
x = fsolve(fun, x0, options);