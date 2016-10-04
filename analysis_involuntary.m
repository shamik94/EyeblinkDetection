r  = load('relaxed_state.csv');
Fs = 50;
Y = fft(r);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
figure;
plot(f,P1);

[b,a] = butter(6,0.15);
dataIn = r;
dataOut = filter(b,a,dataIn);
figure;
plot(dataOut);
axis([0 3000 -15 15]);
output = zeros(length(dataOut));

Y = fft(dataOut);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
figure;
plot(f,P1);

for i = 1:length(dataOut)
    if dataOut(i)>5
        output(i)=1;
    end
 
    
end
figure;
plot(output);
axis([0 3000 -2 2]);    