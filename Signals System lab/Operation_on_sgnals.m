%Defining variables
A = 1;
f = 1;
T = 1/f;
t = 0:0.001*T:T;
T1 = 0.25;

t2 = -1:0.01:1;


%Defining vector
y = A*sin(2*pi*f*t);
y_shifted = interp1(t,y,t-T1,'linear',0);
y_compress = interp1(t,y,2*t,'linear',0);
y_expand = interp1(t,y,0.5*t,'linear',0);
y_flip = fliplr(y);
t_flip = -fliplr(t);

y_even = 0.5*(y+y_flip);
y_odd = 0.5*(y-y_flip);

% unit step
U1 = (t2>=0);
u_flip = fliplr(U1);
u_even = 0.5*(U1 + u_flip);
u_odd = 0.5*(U1 - u_flip);

subplot(2,4,1);
plot(t,y,'r');
hold on;
plot(t,y_shifted,'m');
hold off;
title("Time shift on Sine Graph");
xlabel("Time(t)");
ylabel("Amplitude");


subplot(2,4,2);
plot(t,y_compress,'b');
hold on;
plot(t,y_expand,'g');
hold off;
title("Time scaling on sine Graph");
xlabel("Time(t)");
ylabel("Amplitude");

subplot(2,4,3);
plot(t_flip,y_flip,'g');
title("Time reversal on sine Graph");
xlabel("Time(t)");
ylabel("Amplitude");

subplot(2,4,4);
plot(t,y_even,'b');
title("Even part of sine Graph");
xlabel("Time(t)");
ylabel("Amplitude");

subplot(2,4,5);
plot(t,y_odd,'r');
title("Odd part of sine Graph");
xlabel("Time(t)");
ylabel("Amplitude");

subplot(2,4,6);
plot(t2,u_even,'b');
title("Even part of unit step Graph");
xlabel("Time(t)");
ylabel("Amplitude");

subplot(2,4,7);
plot(t2,u_odd,'p');
title("Odd part of unit step Graph");
xlabel("Time(t)");
ylabel("Amplitude");
