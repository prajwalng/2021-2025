% Matlab Program to Simulate FIR LPF

clc
clear all
close all

N=61;
n=0:N-1;
alpha=(N-1)/2;

wc=pi/4;

rectangular_window=ones(1,N);
hamming_window=0.54-0.46*cos(2*pi*n/(N-1));

subplot(2,1,1)
stem(n,rectangular_window)
grid on
xlabel('n')
ylabel('amplitude')
title('Rectangular Window')

subplot(2,1,2)
stem(n,hamming_window)
grid on
xlabel('n')
ylabel('amplitude')
title('Hamming Window')

h=sin(wc*(n-alpha))./(pi*(n-alpha));
h(alpha+1)=wc/pi;

h_rect=h.*rectangular_window;
h_hamm=h.*hamming_window;

fvtool(h_rect)
fvtool(h_hamm)