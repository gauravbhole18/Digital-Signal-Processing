close all
clear all 
clc
s_n = -10; %defines the start of the signal 
e_n = 10;  %defines the end of signal 
n = (s_n - shift) : (e_n - shift)
l = n;
for n = (s_n - shift) : (e_n - shift)
    i = n + abs(s_n - shift) +1;
    if n >= 0 - shift;
        sig(i) = 1;
    else 
        sig(i) = 0;
    end
end
stem(l,sig)
title("Unit step Signal")