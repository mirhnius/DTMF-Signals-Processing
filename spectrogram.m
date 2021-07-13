clear
clc
close all
audio=audioread('a.wav')';
m=60;
a_size=size(audio);
N=a_size(2);
for i=1:m
X(i,:)=audio(1,i:N-m+i);
    
end
HX=fft(X);
subplot(121)
imagesc(abs(HX));
title('$spectrogram$ $of$ $a.wav$','interpreter' , 'latex','fontSize' , 15)
xlabel('Time')
ylabel('freqency')
colorbar
subplot(122)

spectrogram(audio,m);
title('$spectrogram$ $of$ $a.wav$','interpreter' , 'latex','fontSize' , 15)