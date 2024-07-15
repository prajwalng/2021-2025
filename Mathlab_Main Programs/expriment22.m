x = 0: .1: 20;
y = exp(0.1*x).*sin(x);
plot(x,y)
xlabel('Time (t) in seconds')
ylabel('The Response Amplitude in mm')
title('A Sample 2-D Plot')
%print resp_amp.eps -deps