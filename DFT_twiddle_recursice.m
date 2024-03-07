
close all 
clear all 
tic;
%input_signal = input("enter a sequence")
input_signal = randi(500 , [1 20000]);
len = length(input_signal);
tw_mat = [];

for i = 0 : (len-1);
   
    for j = 0 : (len-1);

        tw_mat((i+1),(j+1)) =  exp((complex(0,-1)*2*pi*i*j)/len);
        
    end
   % dft_signal(i+1) = sum;
end
tw_mat;
dft_signal = tw_mat' * input_signal';

dft_signal= dft_signal';
% dft_signal
% plot(real(dft_signal),imag(dft_signal),"o")
% axis equal
% grid on
% xlabel("dft")
% ylabel("Im(dft)")
%fft(input_signal);
toc;