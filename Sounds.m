% Parameters
Fs = 44100; % Sampling frequency
t = 0:1/Fs:1-1/Fs; % Time vector for 1 second

% Generate a test tone (music simulation)
frequency = 440; % Frequency of A4 note
audioSignal = sin(2*pi*frequency*t);

% Generate synthetic noise (white noise)
noise = 0.2 * randn(size(t));

% Combine the audio signal with noise
noisyAudio = audioSignal + noise;

% Implement a simple noise cancellation
% Assuming we know the exact noise, we subtract it
canceledAudio = noisyAudio - noise;

% Create a time-domain plot to visualize the signals
figure;
%subplot(3,1,1);
plot(t, audioSignal);
title('Original Audio Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');

%subplot(3,1,2);
plot(t, noisyAudio);
title('Noisy Audio Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');

%subplot(3,1,3);
plot(t, canceledAudio);
title('Noise Canceled Audio Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');

% Play the sounds
sound(audioSignal, Fs); pause(1);
sound(noisyAudio, Fs); pause(1);
sound(canceledAudio, Fs);

% Save the audio files if needed
audiowrite('originalAudio.wav', audioSignal, Fs);
audiowrite('noisyAudio.wav', noisyAudio, Fs);
audiowrite('canceledAudio.wav', canceledAudio, Fs);

