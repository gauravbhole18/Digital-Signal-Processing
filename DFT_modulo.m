
close all 
clear all 
tic;
%input_signal = input("enter a sequence")
input_signal = randi(500 , [1 2000]);
len = length(input_signal);
tw_arr = [];
tw_mat = [];
dft_signal = [];
for i = 0 : (len - 1)
    tw_arr(i+1) = exp((complex(0,-1)*2*pi*i)/len);
end

for i = 0 : (len-1)
   
    for j = 0 : (len-1)

        tw_mat((i+1),(j+1)) = tw_arr(1 + (mod(i*j , len)));

    end
end

dft_signal = tw_mat' * input_signal';
dft_signal = dft_signal';
fft(input_signal);
toc;
