
load handel.mat;      
ambientNoise = y;  


antinoise = -ambientNoise;  



load chirp.mat;  

soothingSound = repmat(y, ceil(length(antinoise)/length(y)), 1);  
soothingSound = soothingSound(1:length(antinoise));  
incomingSound = soothingSound + ambientNoise;

mixedSound = incomingSound + antinoise;


player = audioplayer(mixedSound, Fs);
player1 = audioplayer(ambientNoise, Fs);
player2 = audioplayer(antinoise, Fs);
player3 = audioplayer(soothingSound, Fs);
play(player);  


t = (0:length(mixedSound)-1)/Fs;  
figure;
subplot(4,1,1);
plot(t, ambientNoise);
title('Ambient Noise');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(4,1,2);
plot(t, soothingSound);
title('Chirping Sound');
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
