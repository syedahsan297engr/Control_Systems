Ra = 1;  La = 0.005; Km = 10;  J = 2;  b = 0.5;  Kb = 0.1;
num1= [1];  den1=[La Ra] ;  
num2 = [0];  den2 = [1] ;  % Set input to zero
num3 = [1]; den3 = [J b] ; 
sys1 = tf(num1, den1) ;
sys2 = tf(num2, den2) ;
sys3 = tf(num3, den3) ;
sys4 = series(sys1, sys2) ;
sys5 = series(sys4, sys3) ;

Bd = 1;  % Disturbance input gain
numd = [Bd];  dend = [1];  % Transfer function for disturbance input
sysd = tf(numd, dend);
sys6 = parallel(sys5, sysd);
sys = feedback(sys6, Kb);  % Feedback the output to the disturbance input

sys  % Display the resulting transfer function
