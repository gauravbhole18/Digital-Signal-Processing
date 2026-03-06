
clear all 
close all 
clc 
s_n = -10;
e_n = 10;
shift = -2;
n = (s_n - shift) : (e_n - shift)
s = n;
for n = (s_n - shift ) : (e_n - shift)
    i = n + abs(s_n - shift) +1;
    if n  == ( 0 - shift)
        a(i) = 1;
    else 
        a(i) = 0;
    end 
end
stem(s,a)         % used for plotting discrete data % 