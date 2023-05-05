syms I1 I2 I3
loop1=3*I1-I2-I3 == 0; loop2=-I1+2*I2-I3 == 10; loop3=-I1-I2+3*I3 == 0;
sol = solve([loop1 loop2 loop3],[I1 I2 I3]);
I1_sol = sol.I1; I2_sol = sol.I2; I3_sol = sol.I3;
result = [I1_sol, I2_sol, I3_sol];
disp(result)

%now using crammer's rule
A = [3 -1 -1 ; -1 2 -1 ; -1 -1 3];
B = [0;10;0];
Ax = A; Ax(:,1) = B(:);
Ay = A; Ay(:,2) = B(:);
Az = A; Az(:,3) = B(:);
result = [det(Ax)/det(A) , det(Ay)/det(A), det(Az)/det(A)];
disp(result)



