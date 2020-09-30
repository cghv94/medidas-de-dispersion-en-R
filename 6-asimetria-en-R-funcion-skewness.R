# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Estadística 2020-2
# Profesor: Cesar Hernández
# Medidas de dispersión
# Asimetría en R: función skewness()

library(moments)

# Distribución normal

normal <- rnorm(10000, 3, 5)
hist(normal, probability = T)
lines(density(normal), col = "red", lwd = 3)

skewness(normal) # Simétrica, asimetría = 0

# Asimetría positiva > 0

asimetria_positiva <- rnbinom(10000, 10, 0.5)
hist(asimetria_positiva, probability = T)
lines(density(asimetria_positiva), col = "red", lwd = 3)

skewness(asimetria_positiva) # Asimetría positiva

# Asimetría negativa < 0

asimetria_negativa <- -asimetria_positiva
hist(asimetria_negativa, probability = T)
lines(density(asimetria_negativa), col = "red", lwd = 3)

skewness(asimetria_negativa) # Asimetría negativa
