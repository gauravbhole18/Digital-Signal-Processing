close all 
clear all
clc
s_n = input("enter the starting point of the signal: ");
e_n = input("enter the end point of signal: ");

n = s_n : e_n 
s = n;
for n = s_n : e_n 
    i = n + abs(s_n) +1;
    if n  == 0
        a(i) = 1;
    else 
        a(i) = 0;
    end 
end
stem(s,a)   