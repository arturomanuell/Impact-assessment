I group the databases by subperiods
This year is a one of my subperiods

// Cargar la base de datos de 2015
use enaho-2015-subempleo.dta, clear

// Convertir p500d1 de cadena a numérico (si es posible)

**para el caso 2015-2017
destring latitud, replace force
destring p500d1, replace force
destring p500b1, replace force
destring p554r4 , replace force

// Luego proceder con el append
append using enaho-2016-subempleo.dta
destring p500d1, replace force
destring p500b1, replace force
destring p554r4 , replace force

append using enaho-2017-subempleo.dta
destring p500d1, replace force
destring p500b1, replace force
destring p554r4 , replace force

// Guardar la base concatenada
save enaho-2015-2017.dta, replace
