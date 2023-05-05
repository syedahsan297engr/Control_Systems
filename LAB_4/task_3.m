Ra = 1;  La = 0.005; Km = 10;  J = 2;  b = 0.5;  Kb = 0.1;
num1= [1];  den1=[La Ra] ;  
num2 = [10];  den2 = [1] ; 
num3 = [1]; den3 = [J b] ; 
sys1 = tf(num1, den1) ;
sys2 = tf(num2, den2) ;
sys3 = tf(num3, den3) ;
sys4 = series(sys1, sys2) ;
sys5 = series(sys4, sys3) ;
sys = feedback(sys5, Kb) ;

K = 1;%this will be varying
n1 = [K]; d1 = [1];
s1 = tf(n1,d1);
tot_sys = sys*s1;

f_sys = feedback(tot_sys,[1]);
%f_sys
t = [0:0.001:1];
y = step(f_sys,t);
figure()
plot(t,y)


K = 20;
n1 = [K]; d1 = [1];
s1 = tf(n1,d1);
tot_sys = sys*s1;
f_sys = feedback(tot_sys,[1]);
t = [0:0.0001:1];
y = step(f_sys,t);
figure()
plot(t,y)
%f_sys

K = 50;
n1 = [K]; d1 = [1];
s1 = tf(n1,d1);
tot_sys = sys*s1;
f_sys = feedback(tot_sys,[1]);
t = [0:0.0001:1];
y = step(f_sys,t);
figure()
plot(t,y)
%book chap 2 pg 140-150 explanation of these concepts
