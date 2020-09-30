# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Estadística 2020-2
# Profesor: Cesar Hernández
# Resumen estadístico en R: función summary() y función apply()

library(moments)

head(mtcars)
summary(mtcars)
prueba <- data.frame(summary(mtcars))

# Haciendo mi propio resumen estadístico

resumen <- data.frame(Media = apply(mtcars, 2, mean),
                      Mediana = apply(mtcars, 2, median),
                      Mínimo = apply(mtcars, 2, min),
                      Máximo = apply(mtcars, 2, max),
                      Desviación = apply(mtcars, 2, sd),
                      Varianza = apply(mtcars, 2, var),
                      Asimetría = apply(mtcars, 2, skewness),
                      Curtosis = apply(mtcars, 2, kurtosis))

resumen_horizontal <- t(resumen)

# Guardando mi resumen como un archivo .csv

write.csv(resumen_horizontal, file = "mi_primer_resumen_estadístico.csv")
