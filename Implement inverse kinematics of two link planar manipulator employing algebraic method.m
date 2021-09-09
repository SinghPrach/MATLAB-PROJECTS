check=0; l1=10; l2=12; 
axis([-30 30 -30 30]);

while check ==0; [x2,y2]=ginput(1); 
    q=(x2^2+y2^2-l1^2-l2^2); 
    w=q/(2*l1*l2);
    c=w; r=1-c^2; 
    a=sqrt(r); 
    s=a;
 
theta=atan2(s,c); theta2=180*theta/pi; 
k1=l1+l2*cosd(theta2); 
k2=l2*sind(theta2); y=atand(k2/k1); 
theta1=atand(y2/x2)-y; b1=l1*cosd(theta); 
a1=l1*sind(theta); b2=l1*cosd(theta)+l2*cosd(theta+theta2); 
a2=l1*sind(theta1)+l2*sind(theta+theta2);

plot([0,b1],[0,a2]); 
hold on; 
plot([b1,b2],[a1,a2],'r'); 
end
