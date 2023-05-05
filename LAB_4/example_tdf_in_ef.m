% First, we will determine the steady states for a unit step input, 
%R s( ) = 1/s, when T s d ( ) = 0 means disturbance is zero. When H s( ) = 1,
ka = 80;
num = [5000]; den = [1 1000];
sys1 = tf(num,den);
n = [1]; d = [1 20 0];
sys2 = tf(n,d);
%see pg 294 block diagram
syss = series(ka*sys1,sys2);
sys = feedback(syss,[1]);
t = [0:0.01:2];
y = step(sys,t);
plot(t,y)

%now we have to include disturbance in our system taking our input zero
ka = 80;
num = [5000]; den = [1 1000];
sys1 = tf(num,den);
n = [1]; d = [1 20 0];
sys2 = tf(n,d);

sys = feedback(sys2,ka*sys1); %take care of order
sys = -sys
t = [0:0.01:2];
y = step(sys,t);
plot(t,y)
%book page 297
