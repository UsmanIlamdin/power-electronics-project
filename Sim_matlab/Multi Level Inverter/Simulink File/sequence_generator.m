clear;clc;
%% Sequence Generator
% This script generates 4 switching sequences o11, 013, o21, o23 for
% switches Q11, Q13, Q21, Q23 respectively. o12, o14, o22 and o24 can be
% obtain by inverting o11, 013, o21, o23 respectively
% -------------------
%% Input
options.Interpreter = 'tex';
% Include the desired Default answer
options.Default = 'No PWM';
% Use the TeX interpreter in the question
qstring = 'Please Select Operation Mode?';
choice = questdlg(qstring,'Operation Mode',...
    'No PWM','PWM Operation','SPWM Operation',options);

% Defining Variables
d = 100; % Duty
ma = 1.0; % Modulation Index

% Handle response
switch choice
    case 'No PWM'
        option = 0;
    case 'PWM Operation'
        option = 1;
        answer = inputdlg("Enter Duty Value: ");
        d = str2double(answer{1}); % Store Duty Value
    case 'SPWM Operation'
        option = 2;
        answer = inputdlg("Enter Value of Modulaion Index: ");
        ma = str2double(answer{1}); % Store Vlaue of Modulation Index
end
%% Initialization

Fs = 10000; % Samples per Period
p = 20e-3; % Time Period. (Variable Frequency can be obtain by changing period value)
t = linspace(0, p, Fs); % Time axis
duty = d; % From User Input
sw_freq = 10e3; % Switching Frequency for PWM Operation
if (option == 2) % Sine PWM
    pwm = SPWM(sw_freq, t, ma);
end
if (option == 1) % PWM
    pwm = (1 + square(2*pi*sw_freq*t, duty))/2;
end
if (option == 0) % No PWM
    pwm = ones(1, Fs);
end
o11 = zeros(1, Fs);
o13 = zeros(1, Fs);
o21 = zeros(1, Fs);
o23 = zeros(1, Fs);
%% Data

% Conduction Angles or Switching Angles in Degrees
cond_angles = [6 22 38 60]; %(for SHE PWM)[9.8409 20.3828 38.4054 60.4164]; 

% Switching Sequence with minimum transitions
s11 = [0 1 0 1 1 1 0 1 0 0 1 1 0 1 1 0 0];
s13 = [0 0 1 1 0 1 1 0 0 1 0 1 1 1 0 1 0];
s21 = [0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0];
s23 = [0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0];

%% Calculations
%  Calculating Time Axis values of all steps based on conduction angles
time_value = [
     (cond_angles(1)/360)*p
     ((cond_angles(2)/360)*p)
     ((cond_angles(3)/360)*p)
     ((cond_angles(4)/360)*p)
     ((p/2 - (cond_angles(4)/360)*p))
     ((p/2 - (cond_angles(3)/360)*p))
     ((p/2 - (cond_angles(2)/360)*p))
     ((p/2 - (cond_angles(1)/360)*p))
     ((p/2 + (cond_angles(1)/360)*p))
     ((p/2 + (cond_angles(2)/360)*p))
     ((p/2 + (cond_angles(3)/360)*p))
     ((p/2 + (cond_angles(4)/360)*p))
     ((p - (cond_angles(4)/360)*p))
     ((p - (cond_angles(3)/360)*p))
     ((p - (cond_angles(2)/360)*p))
     ((p - (cond_angles(1)/360)*p))
     p
     ];
 %% Output Generation
 % Based on conduction angles generating sequences for Q11, Q13, Q21 and
 % Q23
 j = 1;
for i = 1:Fs
    o11(i) = s11(j)*pwm(i);
    o13(i) = s13(j)*pwm(i);
    o21(i) = s21(j)*pwm(i);
    o23(i) = s23(j)*pwm(i);

    if t(i) > time_value(j)
        j = j + 1;
    end
end
