% Gaurav Bhole - 22BEC0158
close all 
clear all 
clc
s_n = -10;
e_n = 20;
l = s_n : 0.5: e_n;
sig = sin(l/2)
stem(l,sig)
title("22BEC0158_Sinusoidal_signal")