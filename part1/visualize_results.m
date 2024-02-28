%plot tracking

figure(1)
subplot(4,1,1); plot(t, pd(:,1)-tracking(:,1));title('Error in x')
subplot(4,1,2); plot(t, pd(:,2)-tracking(:,2));title('Error in y')
subplot(4,1,3); plot(t, pd(:,3)-tracking(:,3));title('Error in z')
subplot(4,1,4); plot(t, theta_d(:,1)-tracking(:,4));title('Error in theta')


figure(2)
subplot(4,1,1); plot(t, tracking_q(:,1));title('t1 Position')
subplot(4,1,2); plot(t, tracking_q(:,2));title('t2 Position')
subplot(4,1,3); plot(t, tracking_q(:,3));title('d3 Position')
subplot(4,1,4); plot(t, tracking_q(:,4));title('t4 Position')
