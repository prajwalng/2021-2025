%matlab program to simulate sliding window protocol

clc 
clear all
close all

p=input('enter the packets')
w=input('enter the window size')
t=[]%transmitted window
a=0%acknowledgement=a=ack

while(length(p)>0)
    while(a==0)
        if(length(p)>=w)
            t=[t,p(1:w)]
        else
            t=[t,p(1:end)]
        end
        a=randi([0,1])
    end
    p=p(w+1:end)
    a=0
end
disp('transmitted packets are')
t
    