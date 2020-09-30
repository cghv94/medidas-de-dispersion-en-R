# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Estadística 2020-2
# Profesor: Cesar Hernández
# Práctica para telegram y computadora (no se necesita instalar nungún paquete)
# Análisis estadístico sobre contratos adjudicados por el Gobuerno de la 
# CDMX durante la pandemia de Covid-19 en R

# Importando datos
adjudicaciones <- read.csv("https://datos.cdmx.gob.mx/explore/dataset/contratos-adjudicados-covid19/download/?format=csv&timezone=America/Mexico_City&lang=es&use_labels_for_header=true&csv_separator=%2C")

# Nombre de las columnas
colnames(adjudicaciones)

# Resumen estadístico
summary(adjudicaciones$monto_contrato)

# Tabla de número de adjudicaciones según el ente
ente <- adjudicaciones$ente_nombre
frecuencia_ente <- data.frame(sort(table(ente)))
frecuencia_ente <- transform(frecuencia_ente, FreqAc = cumsum(Freq), 
                             FreqRel = prop.table(Freq),
                             FreqRelAc = cumsum(prop.table(Freq)))

# Gráfica de número de adjudicaciones según el ente
plot(frecuencia_ente$ente,frecuencia_ente$Freq,
     ylab = "Monto de la adjudicación",
     las = 2,
     cex.axis = 0.4)

# Tabla de número de adjudicaciones según el proveedor
proveedor <- adjudicaciones$proveedor_nombre
frecuencia_proveedor <- data.frame(sort(table(proveedor)))
frecuencia_proveedor <- transform(frecuencia_proveedor, FreqAc = cumsum(Freq), 
                                  FreqRel = prop.table(Freq),
                                  FreqRelAc = cumsum(prop.table(Freq)))

# Gráfica de número de adjudicaciones según el proveedor
plot(frecuencia_proveedor$proveedor,frecuencia_proveedor$Freq,
     ylab = "Monto de la adjudicación",
     las = 2,
     cex.axis = 0.35)

# Tabla de número de adjudicaciones según el la modalidad
modalidad <- adjudicaciones$modalidad_contratacion
frecuencia_modalidad <- data.frame(sort(table(modalidad)))
frecuencia_modalidad <- transform(frecuencia_modalidad, FreqAc = cumsum(Freq), 
                                  FreqRel = prop.table(Freq),
                                  FreqRelAc = cumsum(prop.table(Freq)))

# Monto de la adjudicación según el proveedor  
plot(adjudicaciones$proveedor_nombre,adjudicaciones$monto_contrato,
     ylab = "Monto de la adjudicación",
     las = 2,
     cex.axis = 0.4)

# Análisis de los montos de las adjudicaciones
monto <- adjudicaciones$monto_contrato

# Histograma de los montos de las adjudicaciones
hist(monto)

# Tabla de los montos de las adjudicaciones
monto_clases <- data.frame(sort(table(cut(monto, breaks = 5))))
monto_clases <- transform(monto_clases, FreqAc = cumsum(Freq), 
                          FreqRel = prop.table(Freq),
                          FreqRelAc = cumsum(prop.table(Freq)))

# Resumen estadístico de los montos de las adjudicaciones
resumen <- data.frame(Mínimo = min(monto), Máximo = max(monto), Mediana = median(monto),
                      Media = mean(monto), Desviación = sd(monto), Varianza = var(monto),
                      Asimetría = skewness(monto), Curtosis = kurtosis(monto))
