t = 0 : 0.0002 : 0.04 ;
y1 = sin(2*pi*50*t) ;
y2 = sin(2*pi*50*t - 2*pi/3) ;
y3 = sin(2*pi*50*t + 2*pi/3) ;
figure();
hold on;
plot(t, y1, 'r');
plot(t, y2, 'b');
plot(t, y3, 'g');
grid on;

%plot3(y1, y2, y3) ;
