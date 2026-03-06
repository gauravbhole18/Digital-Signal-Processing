% Gaurav Bhole - 22BEC0158
close all 
clear all 

x=[3,-1,0,1,3,2,0,1,2,1];
h=[1,1,1];
h1=[1,1,1,0,0]
xl=length(x);
hl=length(h);
r=mod(xl,hl);
nz=hl-r;
xzp=[zeros(1,nz)];
x=[x xzp];
disp(x)
n=2*hl-1;

x1=[zeros(1,n-hl)];
tx1=x(1,[1:3]);
x1=[x1 tx1];
disp(x1);

x2=x1(1,[hl+1:n]);
tx2=x(1,[4:6]);
x2=[x2 tx2];
disp(x2)

x3=x2(1,[hl+1:n]);
tx3=x(1,[7:9]);
x3=[x3 tx3];
disp(x3)

x4=x3(1,[hl+1:n]);
tx4=x(1,[10:12]);
x4=[x4 tx4];
disp(x4)

y1=cconv(x1,h1,5);
disp(y1)

y2=cconv(x2,h1,5);
disp(y2)

y3=cconv(x3,h1,5);
disp(y3)

y4=cconv(x4,h1,5);
disp(y4)

y=[];
ty1=y1(1,[hl:n]);
y=[y ty1];
ty2=y2(1,[hl:n]);
y=[y ty2];
ty3=y3(1,[hl:n]);
y=[y ty3];
ty4=y4(1,[hl:n]);
y=[y ty4];

disp(y);
stem(y)
title("22BEC0158_Overlap_Save")
