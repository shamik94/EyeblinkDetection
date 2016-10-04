Fs = 50;
r  = load('eye_blink_data.csv');
L = length(r);

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

Y = fft(dataOut);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
figure;
plot(f,P1);
output = zeros(1,length(dataOut));
for i = 1:length(dataOut)
    if dataOut(i)>5
        output(1,i)=1;
        %k = k+1;
    end
 
    
end
figure;
plot(output);
axis([0 3000 -2 2]);
p_start = 0;
f_op = zeros(1,L);
p_count = 0;
for i = 1:length(output)
    if output(1,i) == 1
        p_start = 1;
    end
    if output(1,i) == 0
        if p_start == 1
             p_count = p_count + 1;
             p_start = 0;
        end
    end
    if p_count == 3
        f_op(1,i) = 1 - f_op(1,i);
        p_count = 0;
    end
    f_op(1,i+1) = f_op(1,i);
end

figure;
plot(f_op);
axis([0 3000 -2 2]);