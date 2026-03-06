% Gaurav Bhole - 22BEC0158
clc
clear all
x=[3,-1,0,1,3,2,0,1,2,1];
h=[1,1,1];
hl=length(h);
xl=length(x);
r=mod(xl,hl);
r1=hl-r
z=[zeros(1,r1)];
x=[x z];
n=2*hl-1;
z1=[zeros(1,n-hl)];

x1=x(1,1:3);
x1=[x1 z1];
disp(x1)

x2=x(1,4:6);
x2=[x2 z1];
disp(x2)

x3=x(1,7:9);
x3=[x3 z1];
disp(x3)

x4=x(1,10:12);
x4=[x4 z1];
disp(x4);

disp("circular convolution")

y1=cconv(x1,h,n);
disp(y1)

y2=cconv(x2,h,n);
disp(y2)

y3=cconv(x3,h,n);
disp(y3)

y4=cconv(x4,h,n);
disp(y4)

y=[];
y=y1(1,1:hl);
s1=y1(1,4:5)+y2(1,1:2);
y=[y s1];
ty2=y2(1,3);
y=[y ty2];
s2=y2(1,4:5)+y3(1,1:2);
y=[y s2];
ty3=y3(1,3);
s3=y3(1,4:5)+y4(1,1:2);
y=[y s3];
ty4=y4(1,3:5);
y=[y ty4]
disp(y);
stem(y)
title("22BEC0158_Overlap_add")