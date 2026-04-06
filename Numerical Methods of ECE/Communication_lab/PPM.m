clc;
clear;
close all;

% Parameters
fs = 10000;              % Sampling frequency
t = 0:1/fs:0.1;          % Time vector

fm = 50;                 % Message frequency
fp = 200;                % Pulse repetition frequency

T = 1/fp;                % Pulse period
pulse_width = 0.0005;    % Fixed pulse width

% Message signal (normalized 0 to 1)
msg = 0.5 + 0.5*sin(2*pi*fm*t);

% Initialize PPM signal
ppm = zeros(size(t));

% Generate PPM
for k = 1:floor(length(t)/(T*fs))
    
    % Start index of each frame
    start_idx = round((k-1)*T*fs) + 1;
    
    % Shift based on message amplitude
    shift = round(msg(start_idx) * (T - pulse_width) * fs);
    
    % Pulse position
    pulse_start = start_idx + shift;
    pulse_end = pulse_start + round(pulse_width*fs);
    
    if pulse_end <= length(t)
        ppm(pulse_start:pulse_end) = 1;
    end
end

% Plotting
figure;

subplot(3,1,1);
plot(t, msg);
title('Message Signal');

subplot(3,1,2);
stem(t(1:200), ppm(1:200)); % zoomed view
title('PPM Signal (Zoomed)');

subplot(3,1,3);
plot(t, ppm);
title('Full PPM Signal');
ylim([-0.2 1.2]);
