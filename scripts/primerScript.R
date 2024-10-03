## EJEMPLO 1: Primeros pasos programando en R

##  Este es un sencillo ejemplo de un script o programa software
##  escrito en R.
##  Todas las líneas como esta que comienzan por '##' se identifican
##  como comentarios y son ignoradas por el intérprete de R.

## Podemos ir ejecutando cada línea de código poniendo el cursor en dicha
## línea y pulsando el botón "Run"

###################################################################

## CALCUALDORA
## ===========

## R puede funcionar como una calculadora muy potente
## Logaritmo natural de pi
log(pi)
## Logaritmo natural del número de Euler
log(exp(1))

## También podemos trabajar fácilmente con secuencias de números
seq(10)
## O configurando el paso entre cada dos elementos
seq(from = 100, to = 1000, by = 50)

## También admite operaciones con matemática simbólica simple
## Derivadas
D(expression(sin(x)), "x")

## Integrales (func. densidad de probabilidad normal)
integrate(dnorm, -1.96, 1.96)

## Si queremos consultar la ayuda de una función
help(log10)
?
  ###################################################################

## VARIABLES Y FUNCIONES
## =====================

## Variables
a <- 2
a = 2
b = 3
c = a + b

cadena = "Esto es una cadena de caracteres"

## La función paste() permite crear mensajes
paste(cadena, "Otro mensaje")

## Funciones

## Las funciones permiten definir un conjunto de operaciones que vamos
## a efectuar

mifuncion = function(x, y) {
  x^3 + y
}

mifuncion(10)

## Vectores

## Los vectores almacenan secuencias de variables del mismo tipo

v1 = c(1, 2, 3, 4)
length(v1)  ## Tamaño del vector

## ¿Qué pasa si mezclamos variables de distintos tipos?

v2 = c(1, 2, "hola", 3)
str(v2)

## Como vemos, todos los elementos se fuerzan al tipo "chr"

## Indexación de vectores

v1[0]  ## No devuelve nada, es incorrecto en R
v1[1]  ## Primer elemento tiene índice 1
v1[-1]  ## Con signo negativo quitamos el elemento de ese índice

## Ordenación de vectores

set.seed(1234)
v3 <- sample(0:5, 10, replace = TRUE)
v3

## Distintos tipos de ordenación
sort(v3)
rev(sort(v3))
order(v3)  ## Índices para ordenar el vector de menor a mayor

## Operaciones con vectores (element-wise)
v4 <- sample(0:5, 10, replace = TRUE)
v3 + v4
v1 + v3

## Matrices

## Las matrices son conjuntos bidimensionales de elementos
## Tienen información acerca de sus dimensiones (filas y columnas)

m1 = matrix(c(1,2,3,4,5,6,7,8), nrow = 2, ncol = 4)
## Imprimir por pantalla la matriz, se observan filas y columnas
m1
## Dimensiones de la matriz
dim(m1)
m1
## Cambiar o asignar nombres a filas y columnas
rownames(m1) = c("A", "B")
colnames(m1) = c("S1", "S2", "S3", "S4")
m1

## Indexación de matrices
m1[1, 2]  ## Índices [fila, columna]
m1[-1, -1]  ## Quitamos la primera fila y primera columna

## Multiplicación de matrices
m2 = matrix(c(1,2,3,4,5,6,7,8), nrow = 4, ncol = 2)
m1%*%m2

## Operaciones por filas y columnas
rowSums(m1) 
colMeans(m1)

###################################################################

## GESTIÓN DEL ENTORNO DE TRABAJO
## ==============================

## Ejemplo de carga de scripts externos de código
# source("/ruta/al/script/rutina.R")

## Guardar manualmente imagen del espacio de trabajo
## También se puede guardar copia con el icono del disco, en la pestaña
## Environment de RStudio
# save.image("~/tmp.RData")
# rm(list=ls())

## Listado de todos los objetos en el espacio de trabajo
# ls()

## Obtener el directorio de trabajo
getwd()

## Configurar ruta para el directorio de trabajo
# setwd("../../scripts")

## ¡ATENCIÓN!: MUCHO CUIDADO EN WINDOWS
## ## Correcto:
# setwd("C:/micodigo")
# setwd("C:\\micodigo")
## 
## ## Incorrecto:
# setwd("C:\micodigo")

## Obtener una lista de directorios y ficheros en el directorio de trabajo
dir()

