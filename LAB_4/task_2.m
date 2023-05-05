Ra = 1;  La = 0.005; Km = 10;  J = 2;  b = 0.5;  Kb = 0.1;
num1= [1];  den1=[La Ra] ;  
num2 = [10];  den2 = [1] ; 
num3 = [1]; den3 = [J b] ; 
sys1 = tf(num1, den1) ;%G1
sys2 = tf(num2, den2) ;
sys3 = tf(num3, den3) ;%G2
sys4 = series(sys1, sys2) ;%kaG1
%{
sys5 = feedback(sys3, sys4) ;
sys = -sys5 ;
sys
%}
sys5 = series(sys4, sys3) ; %it is your G(s)
sys = 1/(1+sys5*Kb)
sys
t = [0:0.01:10];
y = step(sys,t);
plot(t,y)
%book chap 2 pg 140-150 explanation of these concepts
