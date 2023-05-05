%we have to find w for w we need zeta and zeta = ..
m=1;
k=5;
b=1;
zeta = b/(2*sqrt(k*m));
wn = sqrt(k/m);
w = wn*sqrt(1-zeta^2);
disp(w)
f = w/(2*pi);
disp(f)