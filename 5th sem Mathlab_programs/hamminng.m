% program to simulate hamming code

clc
clear all
close all

p=[0,1,1;1,0,1;1,1,0;1,1,1]
g=[eye(4),p]
d=input('enter the data')
c=mod(d*g,2)

p1=[p',eye(3)]
h=p1'
r=input('enter the received bits')
s=mod(r*h,2)

if s==0
    d=r(1:4)
else
    for i=1:7
        if s==h(i,:)
            e=i
            break
        end
    end
    r(e)=xor(r(e),1)
    d=r(1:4)
end