clc;
clear;
close all;

% Parameters
fs = 10000;              % Sampling frequency
t = 0:1/fs:0.1;          % Time vector

fm = 50;                 % Message frequency (Hz)
fc = 500;                % Carrier frequency (Hz)

Am = 1;                  % Message amplitude

% Message signal (sine wave)
y = Am * sin(2*pi*fm*t);

carrier = sawtooth(2*pi*fc*t,0.7);
pwm=y>carrier;
figure;
plot(t,pwm);
