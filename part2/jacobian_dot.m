function x_dotdot = jacobian_dot(q_dot, q)

a1 = 0.5;
a2 = 0.5;

t1_dot = q_dot(1);
t2_dot = q_dot(2);
t4_dot = q_dot(3);

t1 = q(1);
t2 = q(2);
t4 = q(3);


J_dot = [-a1*t1_dot*cos(t1)-a2*(t1_dot+t2_dot)*cos(t1+t2) -a2*(t1_dot+t2_dot)*cos(t1+t2) 0 0;...
    -a1*t1_dot*sin(t1)-a2*(t1_dot+t2_dot)*sin(t1+t2) -a2*(t1_dot+t2_dot)*sin(t1+t2) 0 0;...
    0 0 0 0];

x_dotdot = J_dot*q_dot;

end