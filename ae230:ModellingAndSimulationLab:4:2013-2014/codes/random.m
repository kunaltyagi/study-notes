function [] = random(X, TIME)
    L = size(X,1);
    Fs=250/0.5;
    T = 1/Fs;
    t = (0:L-1)*T;
    subplot(2,1,1);plot(TIME,X);
    
    NFFT = 2^nextpow2(L);
    Y = fft(X,NFFT)/L;
    f = Fs/2*linspace(0,1,NFFT/2+1);
    subplot(2,1,2);plot(f,2*abs(Y(1:NFFT/2+1)));
end