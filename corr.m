close all 
clear all
%% Data Input
x_n = [1 2 3 4];
h_n = [1 2 3 4];
c = [];
for i = length(h_n) : -1 : 1
    c  =[c h_n(i)];
end
h_n = c;
h = h_n
len = length(h_n);
finmat = h_n';
%% circular shifter
for i = 1 : (len-1);
    for i = 2 : length(h_n);
        matc(1) = h_n(length(h_n));
        matc(i) = h_n(i-1);
    end
    h_n = matc;
    addmat = h_n';
    finmat = [finmat addmat];
end
%% Convolution Calculator
convres = finmat * x_n'
%% Plotting 
tiledlayout(3,1)
nexttile
stem(x_n)
title("x(n)")

nexttile
stem(h)
title("h(n)")

nexttile
stem(convres)
title("convolved result")