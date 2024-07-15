% barh WORLD POPULATION BY CONTINENTS.

cont = char('Asia' , 'Europe' , 'Africa' , ............
    'N. America' , 'S. America') ;
pop = [3332 ; 696 ; 694 ; 437 ; 307] ;
barh(pop)

for i = 1:5,
    gtext(cont(i,:)) ;
end
xlabel('Population in millions')
title('World Population (1992)' , 'fontsize' , 18)