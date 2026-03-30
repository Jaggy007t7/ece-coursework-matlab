%Variables
A=5;
f=10;
ang_f=2*pi*f;
T=1/f;
T2 = T/100;
n = 0:1:100;

%Time vector
t = 0:0.01*T:T;

%Cosine wave
y1 =A*cos(ang_f * t);
y2 = A*cos(ang_f*n*T2);

%sine wave
y3 = A*sin(ang_f * t);
y4 = A*sin(ang_f*n*T2);

%Square waveform
y5 = A*square(ang_f * t);
y6 = A*square(ang_f *n*T2);

% Saw tooth
y7 = A*sawtooth(ang_f * t);
y8 = A*sawtooth(ang_f *n*T2);

%exponential
y9 = A*exp(ang_f * t);
y10 = A*exp(ang_f *n*T2);


subplot(2,5,1);
stem(n,y2);
title('Discrete Cosine Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,5,2);
plot(t,y1,'r');
title('Continuous Cosine Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,5,3);
stem(n,y4,'m');
title('Discrete sine Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,5,4);
plot(t,y3);
title('Continuous sine Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,5,5);
stem(n,y6,'m');
title('Discrete square Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,5,6);
plot(t,y5);
title('Continuous square Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,5,7);
stem(n,y8,'m');
title('Discrete sawtooth Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,5,8);
plot(t,y7);
title('Continuous sawtooh Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,5,9);
stem(n,y10,'m');
title('Discrete exponential Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,5,10);
plot(t,y9);
title('Continuous exponential Wave');
xlabel('Time(t)');
ylabel('Amplitude');

%Variables
t = -1:0.01:1;
n = -100:1:100;

% impulse
I1 = (t==0);
I2 = (n==0);

% unit step
U1 = (t>=0);
U2 = (n>=0);

%ramp type

R1 = t.*U1;
R2 = t.*U2;

%parabola
P1 = t.*R1;
P2 = t.*R2;




subplot(2,4,1);
stem(n,I2);
title('Discrete impulse Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,4,2);
plot(t,I1,'r');
title('Continuous impulse Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,4,3);
stem(n,U2,'m');
title('Discrete unit step Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,4,4);
plot(t,U1);
title('Continuous unit step Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,4,5);
stem(n,R2,'m');
title('Discrete ramp type Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,4,6);
plot(t,R1);
title('Continuous ramp type Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,4,7);
stem(n,P2,'m');
title('Discrete parabola Wave');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,4,8);
plot(t,P1);
title('Continuous parabola Wave');
xlabel('Time(t)');
ylabel('Amplitude');
