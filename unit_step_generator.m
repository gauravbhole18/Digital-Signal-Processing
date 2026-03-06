%Gaurav Bhole - 22BEC0158
close all
clear all 
clc
shift = 2;
s_n = -10;
e_n = 10;
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
title("22BEC0158_Unit_Step_Signal")

