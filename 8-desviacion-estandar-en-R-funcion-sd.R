# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Estadística 2020-2
# Profesor: Cesar Hernández
# Medidas de dispersión
# Desviación estándar en R: función sd()

head(mtcars)
sd(mtcars$mpg)
mean(mtcars$mpg)

plot(mtcars$mpg)
abline(h = 20)
abline(h = c(14, 26), col = "blue", lwd = 3)
