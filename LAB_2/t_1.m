m=1;
k=5;
b=1;
num =[1];
den=[m b k];
sys =tf(num,den);
subplot(2,1,1)
step(sys)
subplot(2,1,2)
step(sys,20)
figure();
impulse(sys)