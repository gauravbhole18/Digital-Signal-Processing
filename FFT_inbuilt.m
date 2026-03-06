close all 
clear all 
input_signal = [1 2 3 4 5 6]
fft_signal = fft(input_signal)
stem(real(fft_signal),imag(fft_signal),"o")