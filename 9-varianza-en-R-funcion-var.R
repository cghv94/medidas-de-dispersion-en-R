# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Estadística 2020-2
# Profesor: Cesar Hernández
# Medidas de dispersión
# Varianza en R: función var()

head(mtcars)
sd(mtcars$mpg)

varianza <- sd(mtcars$mpg)^2

# Usando la función var

var(mtcars$mpg)

# Haciendo un resumen estadístico

head(mtcars)
resumen <- data.frame(Desviación = apply(mtcars, 2, sd),
                      Varianza = apply(mtcars, 2, var))
