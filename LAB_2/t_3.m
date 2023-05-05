%case 1
m1=1;k1=0;b1=1;
num1 = [1]; den1 = [m1 b1 k1];
sys1 = tf(num1,den1);
subplot(3,1,1)
grid on;
step(sys1)
m2=1;k2=5;b2=0;
num2 = [1]; den2 = [m2 b2 k2];
sys2 = tf(num2,den2);
subplot(3,1,2)
grid on;
step(sys2)
axis([0 100 0 0.4])
m3=0;k3=5;b3=1;
num3 = [1]; den3 = [m3 b3 k3];
sys3 = tf(num3,den3);
subplot(3,1,3)
grid on;
step(sys3)