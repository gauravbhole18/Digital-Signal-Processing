clear all 
close all 
clc 
s_n = input("enter the starting point of the signal");
e_n = input("enter the end point of the signsl: ")
n = s_n : e_n 
s = n;
for n = s_n  : e_n
    i = n + abs(s_n) +1;
    if n >= 0 ;
        a(i) = n ;
    else 
        a(i) = 0;
    end 
end
stem(s,a) 