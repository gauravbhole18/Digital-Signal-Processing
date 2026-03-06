close all
clear all

x=[1, -1, 2, -2, 3, -3, 4, -4];
h=[-1,1];
m=length(h);
l=m;
n=length(x);
k=ceil(n/m); 

z(1,m-1+l)=0;
H(1,m-1+l)=0; 
RESULT=zeros(1,m-1+l);
for i=1:m
    H(i)=h(i);
end

p=0;
t=1; 
g=1; 
u=0; 

for h=1:k


    if t==1  
        for i=m:m-1+l  
            z(i)=x(i-m+1); 
        end
        t=t+1; 
        u=u+3; 


    elseif t==k  
        for i=1:m-1 
            z(i)=z(i+m-1+l-2); 
        end
        
        for i=1:m 
            if(u<n) 
                z(m-1+i)=x(g*m+i); 
                u=u+1; 
            else
                z(m+i-1)=0; 
            end

        end

    else  
        for i=1:m-1
            z(i)=z(i+m-1+l-2);
        end
        for i=1:m
            z(m-1+i)=x(g*m+i);
        end
        g=g+1;
        t=t+1;
        u=u+3;
    end



  

    disp(' convolution of using DFT & IDFT : ')
    
   
    y=zeros(1,m-1+l);

    Z=fft(z);
    TF=fft(H);
    Y=Z.*TF;
    y=round(ifft(Y),2);
    disp("convolution ")
    disp(y)
    
    for i=m:m-1+l 
        if p==0
            RESULT(1)=y(i);
            p=p+1;
        else
            RESULT=round([RESULT y(i)],2);
        end
    end


end
disp(RESULT)
stem(RESULT)