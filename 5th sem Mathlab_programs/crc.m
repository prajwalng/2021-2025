% write a matlab program to simulate clock redundancy clock

clc
clear all
close all

d1 = input('enter the data')%1001
div = input('enetr the divisor')%1011
d2 = [d1,zeros(1,length(div)-1)]

sb = d2(1:length(div))
di = xor(sb,div)

for i=length(div)+1:length(d2)
    sb = [di(2:length(div)),d2(i)]
    if sb(1)==1
        di = xor(sb,div)
    else
        di = sb
    end
end

r = di(2:length(div))
c = [d1,r]

r = input('enter the remainder')
d2 = r

sb = d2(1:length(div))
di = xor(sb,div)

for i=length(div)+1:length(d2)
    sb=[di(2:length(div)),d2(i)]
    if sb(1)==1
        di = xor(sb,div)
    else
        di = sb
    end
end

r = di(2:length(div))
c = [d2,r]
if r==0
    disp('no error')
else
    disp('error')
end