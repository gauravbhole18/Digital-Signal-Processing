close all 
clear all 
clc
input_signal = input("enter a sequence")
len = length(input_signal);
dft_signal = []

for i = 0 : (len-1)
    sum = 0;
    for j = 0 : (len-1)

        sum = sum + (input_signal(j+1) * exp((complex(0,-1)*2*pi*i*j)/len));

    end
    dft_signal(i+1) = sum;
end
dft_signal
stem(real(dft_signal),imag(dft_signal),"o")
axis equal
grid on
xlabel("dft")
ylabel("Im(dft)")
fft(input_signal)