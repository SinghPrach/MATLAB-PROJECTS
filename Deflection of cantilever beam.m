% Plot the maximum deflection of a rectangular cantilever beam unit load
% width of 3 cm,
% height 4cm,
% length 100cm
% Youngs modulus 2000
%given
disp('x is taken from the free end where the unit load is applied ');
disp('that means at x=0 free end and x=l wall(fixed support)');
w= 3;
h = 4;
l = 100;
E = 2000;
I = (w*h^3)/12;
disp ('the formula for deflection (y) w.r.t (x) for unit load cantilever beam is y=((-x^3)+(3*x*(l^2))- (2*(l^3)))/(6*E*I) ')
A = 1./(E*I*6) ;
b = 1./(E*I*2);
 
B = l*l*b;
c = 1./(E*I*3); C = l*l*l*c;
disp ('writing y= A*x^3 + B*x + C'); disp('a = E*I');
disp ('A = 1/(a*6)') ;
disp ('b = 1/(a*2)');
disp ('B = l*l*b');
disp ('c = 1/(a*3)'); disp('C = l*l*l*c'); x=[0 100]
Y = -A*x.^3 + B*x - C; plot(x,Y),axis([0 100 -15 0]);
