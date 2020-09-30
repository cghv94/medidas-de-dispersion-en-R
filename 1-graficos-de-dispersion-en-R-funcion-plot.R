# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Estadística 2020-2
# Profesor: Cesar Hernández
# Medidas de dispersión
# Gráficos de dispersión en R: función plot()

head(mtcars)

plot(mtcars$mpg)

plot(mtcars$mpg,mtcars$hp)

plot(mtcars$mpg,mtcars$hp, main = "Dispersión", xlab = "Milles per gallon", ylab = "Horse power", col = "gray")
