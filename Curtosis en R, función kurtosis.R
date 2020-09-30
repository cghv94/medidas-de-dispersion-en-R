# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Estadística 2020-2
# Profesor: Cesar Hernández
# Medidas de dispersión
# Curtosis en R: función kurtosis()

# Distribución normal

normal <- rnorm(10000, 7, 11)
hist(normal, probability = T)
lines(density(normal), col = "red", lwd = 3)

kurtosis(normal) # Mesocúrtica, curtosis = 3

# Leptocúrtica > 3

leptocurtica <- c(rnorm(1000, -2, 4), rnorm(5000, 0, 2), rnorm(1000, 2, 4))
hist(leptocurtica, probability = T)
lines(density(leptocurtica), col = "red", lwd = 3)

kurtosis(leptocurtica) # Leptocúrtica

# Platicúrtica < 3

platicurtica <- c(rnorm(1000, -2, 1), rnorm(1000, 0, 2), rnorm(1000, 2, 1))
hist(platicurtica, probability = T)
lines(density(platicurtica), col = "red", lwd = 3)

kurtosis(platicurtica) # Platicúrtica
