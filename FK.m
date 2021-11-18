clear
clc
close all
syms t1 t2
%t3 t4 d1 d2 d3 d4 L11 L12
%L1 L2 L3 L4 
DOF = 2;

s = eye (4);

% T= input (' ');

for i = 1: DOF

    t = fk_fun ([33.52+t1 260.05+t2],[0 0],[135 112],[0 0], i );
    
    s = s*t;
    disp (s)
end

fprintf ('forward kinematic matrix of the given DH parameter is: \n\n')

disp (s)

