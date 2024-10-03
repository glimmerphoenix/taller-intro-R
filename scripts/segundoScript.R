## EJEMPLO 2: Lectura de datos en R

## Leemos el archivo CSV con los datos
## Origen: http://tutorials.iq.harvard.edu/R/Rgraphics/Rgraphics.html
economist_data <- read.csv("data/EconomistData.csv")

## Nota: HDI = Human Development Index
## CPI = Corruption Perception Index

## Mostrar las primeras 6 filas por pantalla
head(economist_data)

## Descriptiva básica de las variables
summary(economist_data)

## Descriptiva básica más completa de las variables (columnas)
describe(economist_data)

## Buscamos a España
economist_data[economist_data$Country == "Spain", ]

## ¿Quién es percibido por sus ciudadanos como el país más corrupto?
economist_data[which.max(economist_data$CPI), ]

## ¿Quién es percibido por sus ciudadanos como el país menos corrupto?
economist_data[which.min(economist_data$CPI), ]

## Media de HDI
mean(economist_data$HDI)

## Media de HDI por región
economist_data |> group_by(Region) |> 
      summarise(mean=mean(HDI))

## Media de CPI
mean(economist_data$CPI)
