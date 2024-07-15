% matlab program to simulate leaky bucket algorithm

clc
clear all 
close all

ir = input('Enter the input rate')
or=input('Enter  the output rate')
bs=input('Enter the buket size')
d=input('Enetr the data')

b=[]
o=[]

while(length(d)>0)
    
    if length(d)>=ir
        b=[b,d(1:ir)]
    else
        b=[b,d(1:end)]
    end
    
    d=d(ir+1:end)
    
    if length(b)>bs
        b=b(1:bs)
    end
    
    if length(b)>=or
        o=[o,b(1:or)]
    else
        o=[o,b(1:end)]
    end
        
    b=b(or+1:end)
end

o=[o,b(1:end)]

