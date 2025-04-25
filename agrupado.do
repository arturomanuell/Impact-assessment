// Cargar la base de datos de 2007
use enaho-2015-subempleo.dta, clear

// Convertir p500d1 de cadena a numérico (si es posible)

**para el caso 2010-2011
destring latitud, replace force
destring p500d1, replace force
destring p500b1, replace force
destring p554r4 , replace force

// Luego proceder con el append
append using enaho-2016-subempleo.dta
destring p500d1, replace force
destring p500b1, replace force
destring p554r4 , replace force

// Si deseas continuar con la de 2009
append using enaho-2017-subempleo.dta
destring p500d1, replace force
destring p500b1, replace force
destring p554r4 , replace force

// Guardar la base concatenada
save enaho-2015-2017.dta, replace