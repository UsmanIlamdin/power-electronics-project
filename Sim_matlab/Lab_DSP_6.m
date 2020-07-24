%Task-1
%Reading the original signal
[signal,fs]=audioread('almostcaught.wav'); 
%Play the recording
sound(signal,11025,8)
frequency = fs;
fprintf('The sampling frequency is %d\n',frequency)
disp('The frequency of the waveform is 1000')

%Defining the notch filter
n = 0:length(signal)-1;
a = 0.9;
%Defining scale in w
w = linspace(-pi, pi, length(signal))';
%Defining scale in f
df = fs/length(signal);
f = -fs/2:df:fs/2-df;

X = fftshift(fft(signal));
%Plotting the waveform
figure;
plot(w,abs(X));
xlabel('w');ylabel('magnitude');
figure
plot(f,abs(X));
xlabel('frequency');ylabel('magnitude');

%Passing through the notch filter
y = get_output_system_5(signal, n);
%Taking the fourier transform
Y = fftshift(fft(y));

%Plotting the waveform
figure;
plot(w,abs(Y));
xlabel('frequency');ylabel('magnitude');
figure;
plot(f,abs(Y));
xlabel('frequency');ylabel('magnitude');


%%Task2
M = 4;
w_c = 1/M;
a = 0.9;
w_n = 2*pi*1000/11025;

%Part-a
h = fir1(22, w_c)';
n = (0:22);
figure
plot(n,h)

%Part-b
figure
freqz(h);
title('Frequency Response')
figure
impz(h);
title('Impulse Response')

%Part-c
[x, Fs] = audioread('almostcaughthigh.aac');
x_f = filter(h, 1, x);
w = linspace(-2000,2000,length(x_f));
X_f = fftshift(fft(x_f));
figure
plot(w,abs(X_f))
title('Output of Low Pass Filter')

%Without Polyphase Decomposition
x_d = downsample(x_f, M);
n = (0:length(x_d)-1)';
w1 = linspace(-2000,2000,length(x_d));
y = get_output_system_5(x_d, n);
Y = fftshift(fft(y));
figure;
plot(w1,abs(Y));
ylim([0 500])
title('Output of Notch Filter')
%sound(y, 11025);

%Part-d
%With Polyphase Decomposition
y1 = polyphase(x_f, h, M);
n = (0:length(y1)-1)';
w2 = linspace(-2000,2000,length(y1));
y_ = get_output_system_5(y1 , n);
Y_ = fftshift(fft(y_));
figure;
plot(w2,abs(Y_));
title('Polyphase Decomposition')
sound(y_,11025);
