# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Estadística 2020-2
# Profesor: Cesar Hernández
# Medidas de dispersión
# Distribución normal en R: la regla empírica y la función rnorm()

normal <- rnorm(10000)

mean(normal)
sd(normal)

hist(normal, probability = T)
lines(density(normal), col = "red", lwd = 3)

plot(normal)
abline(h = c(-1,0,1), col = "green", lwd = 3)
abline(h = c(-2,2), col = "orange", lwd = 3)
abline(h = c(-3,3), col = "red", lwd = 3)
