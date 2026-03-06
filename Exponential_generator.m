close all
clear all 
clc
s_n = -10;
e_n = 10
shift = 0;
a = (s_n - shift) : (e_n - shift);
sig = exp(a);
stem(a,sig)