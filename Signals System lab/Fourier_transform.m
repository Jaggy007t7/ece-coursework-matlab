%Fourier transform of the sinusoidal signal : 
a =2;
m = 27;
N = 1024;
fs = 1000;
fin = (m*fs)/N;
t = 0:(1/fs):((N-1)/fs);
x = a*sin(2*pi*fin*t);
y = fft(x);
mag = abs(y);
% hanning window
w = hann(N);
xw = x.*w';
y2 = fft(xw);
mag2 = (abs(y2)/mean(w))*(2/N);
subplot(2,1,1);
stem(mag);
subplot(2,1,2);
stem(mag2);
