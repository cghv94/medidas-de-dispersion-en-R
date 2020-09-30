# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Estadística 2020-2
# Profesor: Cesar Hernández
# Medidas de dispersión
# Polígonos de frecuencias en R: función plot()

head(mtcars)

frecuencias <- table(mtcars$carb)

plot(frecuencias, type = "o")

plot(frecuencias, type = "o",main = "Polígono", xlab = "Clase", ylab = "Frecuencia", col = "blue")
