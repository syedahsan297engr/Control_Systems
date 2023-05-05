%ex 4.11
syms K
n1 = [1]; d1 = [1 10];
s1 = tf(n1,d1);

n2 = [14]; d2 = [1 5 6];
s2 = tf(n2,d2);

sys5 = feedback(s1, s2) ;
sys5

%till here it is right way of calc transfer func
%now for disturbance

dist = 1/(1+s1*s2);
dist