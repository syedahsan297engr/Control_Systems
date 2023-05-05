t = 0 : 0.002 : 1;
T = 0.25; %0.25/0.002 will give you this sample number 125
a = 1/T;
f = 10; w = 2*pi*f;
y = exp(-a.*t).*sin(w*t);
plot(t,y); grid on; xlabel("t") ; ylabel("y");