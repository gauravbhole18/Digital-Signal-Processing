% Gaurav Bhole - 22BEC0158
clear all 
close all 
clc 
shift = 0;
s_n = -10;
e_n = 10;
n = (s_n - shift) : (e_n - shift)
s = n;
for n = (s_n - shift) : (e_n - shift)
    i = n + abs(s_n - shift) +1;
    if n >= 0 - shift;
        a(i) = (n + shift);
    else 
        a(i) = 0;
    end 
end
stem(s,a) 
title("22BEC0158_Ramp_Signal")