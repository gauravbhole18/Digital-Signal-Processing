clc
clear
close all

vm = 8;
vc = 10;
m = vm/vc;
fc = 10e+3;
fs = 1e+6;
fm = 1e+3;
t=0:1/fs:((4/fm)-(1/fs));
x = cos(2*pi*fm*t);

AM = ammod(x,fc,fs,0,vc);
AMN = awgn(AM,2);
DAM = amdemod(AM,fc,fs,0,vc);
DAMN = amdemod(AMN,fc,fs,0,vc);
d=DAMN-DAM;

subplot(5,1,1);
plot(t,x);
title('Modulating signal');

subplot(5,1,2);
plot(t,AM);
title(' AM modulated signal');

subplot(5,1,3);
plot(t,AMN);
title('AM modulated signal with noise');

subplot(5,1,4);
plot(t,DAM);
title('Demodulated signal ');

subplot(5,1,5);
plot(t,DAMN);
title('Demodulated signal after adding noise');

figure(2);
plot(t,d);
title('Noise');