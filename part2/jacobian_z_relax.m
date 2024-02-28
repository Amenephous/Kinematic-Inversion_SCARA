function [q_dotdot1,Jacob] = jacobian_z_relax(q, e)

%Link length
a1 = 0.5;
a2 = 0.5;

%Joint Variables
t1 = q(1);
t2 = q(2);
d3 = q(3);
t4 = q(4);


Ab0 = [1 0 0 0;0 1 0 0;0 0 1 1;0 0 0 1];
A01 = [cos(t1) -sin(t1) 0 a1*cos(t1); sin(t1) cos(t1) 0 a1*sin(t1); 0 0 1 0; 0 0 0 1];
A12 = [cos(t2) -sin(t2) 0 a2*cos(t2); sin(t2) cos(t2) 0 a2*sin(t2);0 0 1 0;0 0 0 1];
A23 = [1 0 0 0;0 1 0 0;0 0 1 -d3;0 0 0 1];
A34 = [cos(t4) -sin(t4) 0 0;sin(t4) cos(t4) 0 0;0 0 1 0;0 0 0 1];

Ab1 = Ab0*A01;
Ab2 = Ab1*A12;
Ab3 = Ab2*A23;
Ab4 = Ab3*A34;

z0 = [0 0 1]';
z1 = [0 0 1]';
z2 = [0 0 1]';
z3 = [0 0 1]';
z4 = [0 0 1]';

J_1 = cross(z0,Ab4(1:3,4));
J_2 = cross(z1,(Ab4(1:3,4) - Ab1(1:3,4)));
J_4 = cross(z3,(Ab4(1:3,4) - Ab3(1:3,4)));



jac = [J_1 J_2 z2 J_4;z0 z1 [0 0 0]' z3];
Jacobian = [jac(1:2,:); jac(end,:)];

Jacob = Jacobian;
q_dotdot1 = pinv(Jacobian)*e;