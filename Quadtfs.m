linsys1=(load('linsys1.mat'));
linsys_tf = minreal(tf(linsys1.linsys1));
z_dalt = linsys_tf(6,4)
h_dalt = -z_dalt
phi_droll = linsys_tf(7,1)
theta_dpitch = linsys_tf(8,2)
psi_dyaw = linsys_tf(9,3)

linsys2 = (load('atf1.mat'));
theta_thetac = tf(linsys2.IOTransfer_r2y)
x_theta = g*tf(1,[1 0 0])
x_thetac = x_theta*theta_thetac
y_phic = -x_thetac
