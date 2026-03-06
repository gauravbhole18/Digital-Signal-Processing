%Gaurav Bhole - 22BEC0158
close all 
clear all 

%% Data Input
h_n = [1 4 3];
x_n = [3 5 1 2 ];
c = [];
%% Zero Padding
output_length = length(h_n) + length(x_n) -1
for i = length(h_n) : -1 : 1
    c  =[c h_n(i)];
end
h_n = c
h_n = [h_n zeros(1,(output_length - length(h_n)))];
x_n = [x_n zeros(1,(output_length - length(x_n)))];

%for i = length(h_n) : -1 : 1
 %   c  =[c h_n(i)];
%end
%h_n = c

h = [1 2 3 4 5 6];
%h_n = [4 3 2 1 0 0 0]
len = length(h_n);
finmat = h_n';

%% circular shifter
for i = 1 : (len-1);             
mat = h_n;                        

for i = 2 : length(h_n);          
    matc(1) = h_n(length(h_n));
    matc(i) = h_n(i-1);
    
end
h_n = matc          ;               
addmat = h_n';
finmat = [finmat addmat];
end
%% Convolution Calculator
finmat;
convres = finmat * x_n';
c = [];
for i = length(convres) : -1 : 1
    c  =[c convres(i)];
end
convres = c

tiledlayout(3,1)
nexttile
stem(x_n)
title("x(n)")

nexttile
stem(h)
title("h(n)")

nexttile
stem(convres)
title("22BEC0158_corelated result")