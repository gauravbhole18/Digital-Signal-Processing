
clc 
clear all 
close all 
Fs = 8192; %sampling frequency
duration = 8; % Duration 
ambientNoise = randn(round(Fs * duration), 1); % Generate white noise


load chirp.mat;
wantedsoundd = repmat(y, ceil(length(ambientNoise)/length(y)), 1); %repeat
wantedsoundd = wantedsoundd(1:length(ambientNoise)); 


antinoise = -ambientNoise;


incomingSound = wantedsoundd + ambientNoise;


mixedSound = incomingSound + antinoise;


player = audioplayer(mixedSound, Fs);
player1 = audioplayer(ambientNoise, Fs);
player2 = audioplayer(antinoise, Fs);
player3 = audioplayer(wantedsoundd, Fs);


play(player);  


t = (0:length(mixedSound)-1)/Fs;  
figure;
subplot(4,1,1);
plot(t, ambientNoise);
title('White Noise (Ambient Noise)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(4,1,2);
plot(t, wantedsoundd);
title('Chirping Sound (wanted Sound)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(4,1,3);
plot(t, incomingSound);
title('Sound With Noise');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(4,1,4);
plot(t, mixedSound);
title('Resulting Sound After ANC');
xlabel('Time (s)');
ylabel('Amplitude');
