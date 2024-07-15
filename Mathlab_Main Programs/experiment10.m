% World population by continents

% popdata : Af,As,Eu,NA,SA

pop = [807;37701;731;481;349] ;
continents = {'Africa' , 'Asia' ,....
    'Europe' , 'N.America' , 'S.America'} ;
%pie(pop,continents)
pie3(pop,continents)
title({ 'World Population' ,...
    '(2003)' })
