% Pulse amplitude modulation;

a=10;
t = 0:0.00001:0.1;
f = 100;
y = a*sin(2*pi*f*t);

% square waveform;
fc=1000;
y1 = 1+square(2*pi*fc*t);

pam = y.*y1;

subplot(3,1,1);
plot(t,y);
grid on;

subplot(3,1,2);
plot(t,y1);
grid on;

subplot(3,1,3);
plot(t,pam);
grid on;


%Pwm:-
carrier = sawtooth(2*pi*fc*t,0.7);
pwm=y>carrier;
figure;
plot(t,pwm);
