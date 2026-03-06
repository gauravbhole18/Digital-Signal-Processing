clc
clear
close all

vm = 8;
vc = 10;
fc = 10e+3;
fs = 1e+6;
fm = 1e+3;
df=4000;
m=df/fm;
t=0:1/fs:((4/fm)-(1/fs));
x = cos(2*pi*fm*t);

AM = fmmod(x,fc,fs,df,0);
AMN = awgn(AM,10);
DAM = fmdemod(AM,fc,fs,df,0);
DAMN = fmdemod(AMN,fc,fs,df,0);
d=DAMN-DAM;

subplot(5,1,1);
plot(t,x);
title('Modulating signal');

subplot(5,1,2);
plot(t,AM);
title('FM modulated signal');

subplot(5,1,3);
plot(t,AMN);
title('FM modulated signal with noise');

subplot(5,1,4);
plot(t,DAM);
title('Demodulated signal ');

subplot(5,1,5);
plot(t,DAMN);
title('Demodulated signal after adding noise');

figure(2);
plot(t,d);
title('Noise');