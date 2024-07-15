%matlab program to simulate convolutional encoding
clc
clear all
close all

MSG=input('enter the message')
CONSTRAINTLENGTH=3
CODEGENERATOR=[5,7]
trellis = poly2trellis(CONSTRAINTLENGTH, CODEGENERATOR) 
code = convenc(MSG,trellis)

tblen= log2(trellis.numOutputSymbols)
opmode='trunc'
dectype  = 'hard'
decoded = vitdec(code,trellis,tblen,opmode,dectype)