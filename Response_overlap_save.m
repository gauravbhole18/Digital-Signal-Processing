
clc
clear
close all


x = [1, -1, 2, -2, 3, -3, 4, -4];
h = [-1, 1];

m=length(h);
l=m;
n=length(x); %length of x is 10
k=ceil(n/m);
Y(1,k*(m-1+l)-(k-1)*(m-1))=0;
RESULT=zeros(1,k*(m-1+l)-(k-1)*(m-1));
H(1,m-1+l)=0;
for i=1:m
    H(i)=h(i);
end
p=0;
t=1;
g=1;
u=0;
f=1;

for h=1:k 
    z(1,m-1+l)=0;
    if t==1
        for i=1:m
            z(i)=x(i);
        end
        t=t+1;
        u=u+3;
    elseif t==k
        for i=1:m
            if(u<n)
                z(i)=x(g*m+i);
                u=u+1;
            else
                z(i)=0;
            end
        end
    else
        for i=1:m-1+l
            z(i)=0;
        end
        for i=1:m
            z(i)=x(g*m+i);
        end
        g=g+1;
        t=t+1;
        u=u+3;
    end
    disp('splittinf of signal ')
    disp(z)
    disp(H)
    for i=1:m-1+l
        y(i)=0;
    end
    disp(' convolution using DFT & IDFT : ')
    
    y=zeros(1,m-1+l); 
   
    Z=fft(z);
    TF=fft(H);
    Y=Z.*TF;
    y=round(ifft(Y),2);
    disp("convolution")
    display(y)
    
    if p==0
        for i=1:m-1+l
            RESULT(i)=RESULT(i)+y(i);
        end
    elseif p~=0
        y;
        for i=1:m-1+l
            RESULT(f*m+i)=RESULT(f*m+i)+y(i);
        end
        f=f+1;
    end
    p=p+1;
end
disp("final signal: ")
disp(RESULT)
stem(RESULT)