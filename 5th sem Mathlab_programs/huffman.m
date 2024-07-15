% matlab program to write a huffman coding algorithm

clc
clear all
close all

SYM=input('enter the symbols')
PROB=input('enter the probabilities')
[DICT, AVGLEN]=huffmandict(SYM,PROB)
%enco=huffmanenco(sig,DICT)
%deco=huffmandeco(enco,DICT)
sig = input('enter the signal to be transmitted')
enco=huffmanenco(sig,DICT)
deco=huffmandeco(enco,DICT)
e = 0
for i=1:length(PROB)
    e = e+PROB(i)*log2(1/PROB(i))
end
%eff=e/AVGLEN
eff=(e/AVGLEN)*100
%r=1-eff

r=100-eff