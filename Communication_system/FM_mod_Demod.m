% My code:-
% FM modulation and demodulation:-

%Message signal:-
Am =1;
fm = 10;
fs = 10^6;
t = 0:(1/fs):1;
msg = Am*cos(2*pi*fm*t);
fc = 80;

%modulation;
mod = fmmod(msg,fc,fs,50);

demod = fmdemod(mod,fc,fs,50);

subplot(3,1,1);
plot(t,mod,'m');

subplot(3,1,2);
plot(t,demod);




% Parameters
fs = 1000;              % Sampling frequency (Hz)
t = 0:1/fs:1;           % Time vector (1 second)
fm = 5;                 % Message signal frequency (Hz)
fc = 100;               % Carrier frequency (Hz)
kf = 50;                % Frequency deviation (Hz)

% Message Signal
message = sin(2*pi*fm*t);

% FM Modulation
modulated = fmmod(message, fc, fs, kf);

% FM Demodulation
demodulated = fmdemod(modulated, fc, fs, kf);

% Plotting
figure;

% Message Signal
subplot(3,1,1);
plot(t, message, 'b');
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% FM Modulated Signal
subplot(3,1,2);
plot(t, modulated, 'r');
title('FM Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Demodulated Signal
subplot(3,1,3);
plot(t, demodulated, 'g');
title('Demodulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
