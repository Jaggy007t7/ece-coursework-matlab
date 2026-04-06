% Pulse Width Modulation;
a=4;
fs=10000;
t= 0:(1/fs):0.1;
f = 50;
msg_signal = a*sin(2*pi*f*t);

% Now time for PWM;
fc = 500;
carrier = a*sawtooth(2*pi*fc*t,0.5);  % Due to this it will become triangle.

pwm = msg_signal>carrier;

subplot(3,1,1);
plot(t, msg_signal);
title('Message Signal');
grid on;

subplot(3,1,2);
plot(t, carrier);
title('Carrier Signal (Triangle)');
grid on;

subplot(3,1,3);
plot(t, pwm);
title('PWM Signal');
grid on;
