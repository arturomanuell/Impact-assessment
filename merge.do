// Cargar la primera base de datos (con datos georeferenciados)
use enaho01-2007-100.dta, clear

// Filtrar los datos según la condición del ubigeo
keep if substr(ubigeo, 1, 4) == "1501"

keep conglome ubigeo longitud latitud
duplicates drop conglome, force

save "georeferenciados", replace

// Paso 2: Cargar la segunda base de datos (base de datos objetivo)
use enaho01a-2007-500.dta, clear

// Filtrar también según el ubigeo en la segunda base de datos
keep if substr(ubigeo, 1, 4) == "1501"

// Paso 3: Hacer el merge many-to-one (m:1) usando la variable conglome
merge m:1 conglome using "georeferenciados.dta"

// Paso 4: Verificar el resultado del merge
tab _merge

save "enaho-2007.dta", replace