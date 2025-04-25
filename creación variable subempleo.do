use enaho-2017.dta, clear
* Crear la nueva variable e inicializar en 0
generate subempleo = .

//SUBEMPLEO POR HORAS
* Cambiar el valor a 1 si p513t > 0 & p513t <= 35 y si queria trabajar más 
replace subempleo = 0 if p513t > 0 & p513t <= 35 & p521 == 1

replace subempleo = 0 if p513t > 0 & p513t <= 35 
*el uso de p521 está sujeto a evaluación

//SUBEMPLEO POR INGRESOS
sum d524a1
*hay que dividir d524a1 entre 12 ya que este es el anualizado
sum p524a1
*al contrario el p524a1 puede ser mensual semanal diario
gen ingresos = d524a1 / 12

replace subempleo = 0 if ingresos <= 957.91 & p513t >= 35 & p521 == 1

replace subempleo = 0 if ingresos <= 669.95 & p513t >= 35 



//SUBEMPLEO 1 es no ser subempleado
replace subempleo = 1 if missing(subempleo) & !inlist(ocu500, 0, 2, 3, 4)

gen empleo = .
replace empleo = 1 if ocu500 == 1
replace empleo = 0 if ocu500 == 2 | ocu500 == 3

save enaho-2017-subempleo.dta








//esto no hagas bruto ya que no forma parte de la pea
* Cambiar el valor a 0 si p513t == 0 y ocu500 es 2 o 3
replace subempleo = 0 if (p513t == 0 & (ocu500 == 2 | ocu500 == 3)) | (ocu500 == 2 | ocu500 == 3)


*esta ultima está mejor ya que da más datos
*Cambia el valor a 0 si p501 y p502 ambas son igual a 2 
*trabajaron la semana pasado y trabaran la proxima semana
replace subempleo = 0 if p501 == 2 & p502 == 2


drop if missing(subempleo)