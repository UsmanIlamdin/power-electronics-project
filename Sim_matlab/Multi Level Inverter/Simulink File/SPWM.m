function y = SPWM(f, t, ma)
counter = 1;
y = zeros(1, length(t));
table = zeros(1, 200);
for angle = 0:0.9:179
    table(counter) = ma*100*sind(angle);
    counter = counter + 1;
end
sin_table = [table table];
del = length(t)/length(sin_table);
lower = 1;
upper = del;
angle = 1;
for counter = 1:del:length(t)
    y(lower:upper) = (1 + square(2*pi*f*t(lower:upper), sin_table(angle)))/2;
    lower = upper + 1;
    upper = upper + del;
    angle = angle + 1;
end
