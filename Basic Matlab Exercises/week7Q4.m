frequence = 150; % Sampling frequency
t = 0:1/frequence:1; % Time vector of 1 second
f = 5; % Create a sine wave of f Hz.
x = square(2*pi*t*f);
lfft = 1024; % Length of FFT
% Take fft, padding with zeros so that length(X) is equal to nfft
X = fft(x,lfft);
% FFT is symmetric, throw away second half 
X = X(1:lfft/2);
% Take the magnitude of fft of x
mx = abs(X);
% Frequency vector
f = (0:lfft/2-1)*frequence/lfft;
% Generate the plot, title and labels.
figure(1);
plot(t,x);
title('Square Wave Signal');
xlabel('Time (s)');
ylabel('Amplitude');
figure(2);
plot(f,mx);
title('Power Spectrum of a Square Wave');
xlabel('Frequency (Hz)');
ylabel('Power'); 