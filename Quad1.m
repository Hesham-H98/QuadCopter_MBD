clc
clearvars
close all

data = xlsread('Tarek Deifs Quad','B2:B9');

Quad.m = data(1); Ixx = data(2); Iyy = data(3); Izz = data(4);
g = data(5); Quad.b = data(6); Quad.d = data(7); Quad.l = data(8);
Quad.I = [Ixx , 0 , 0 ; 0 , Iyy , 0 ; 0 , 0 , Izz];
Quad.Omega_nom = sqrt(Quad.m*g/4/Quad.b);
Quad.mixer = [ 0    0.5    -0.25   0.25;...
             -0.5    0      0.25   0.25;...
               0   -0.5    -0.25   0.25;...
              0.5    0      0.25   0.25 ];