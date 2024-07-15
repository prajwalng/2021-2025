%matlab program to simulate distance vector routing
clc
clear all
close all

n= input('enter the no of nodes')%n=4
c=input('enter the cm')%cm or c is cost matrix
%enter the cm[0 2 6 Inf;2 0 3 Inf;6 3 0 1;Inf Inf 1 0]
h=input('enter the hm')%hm or h is hop matrix
%enter the hm[1 2 3 4;1 2 3 4;1 2 3 4;1 2 3 4]

for k=1:n
    for i=1:n
        for j=1:n
            if c(i,j)>c(i,k)+c(k,j)
                c(i,j)=c(i,k)+c(k,j)
                h(i,j)=k
            end
        end
    end
end