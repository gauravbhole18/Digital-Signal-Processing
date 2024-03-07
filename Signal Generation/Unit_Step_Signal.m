close all
clear all 
clc
s_n = -10; %defines the start of the signal 
e_n = 10;  %defines the end of signal 
n = (s_n ) : (e_n )
l = n;
for n = (s_n ) : (e_n )
    i = n + abs(s_n ) +1;
    if n >= 0 ;
        sig(i) = 1;
    else 
        sig(i) = 0;
    end
end
stem(l,sig)
title("Unit step Signal")
 