%Convolution of two signals
x = [1,2,1];
n_x = 0:1:2;
h = [1,-1,1];
n_h = 0:1:2;
%Perform convolution 
y = conv(h,x);
len_y = length(y);
n_y = 0:1:(len_y - 1);
subplot(3,1,1);
stem(n_x,x,'m');
title("Provided Signal");
xlabel("No. of Samples");
ylabel("Amplitude");
subplot(3,1,2);
stem(n_h,h,'p');
title("Impulse Signal");
xlabel("No. of Samples");
ylabel("Amplitude");
subplot(3,1,3);
stem(n_y,y,'g');
title("Convolution of signal");
xlabel("No. of Samples");
ylabel("Amplitude");
