
## Dataset mtcars, disponible en R
# Variables:
# - mpg = millas por galón 
# - cyl = cilindros 
# - hp = caballos de fuerza 
# - disp = Mide el volumen del motor y representa el poder que genera el motor 
# - wt = peso en libras 
# - qsec = 1/4 milla de tiempo (Tiempo que se demora el carro en recorrer 1/4 de milla) 
# - vs = (0= , 1=) 
# - am = Trasmisión (0=automático, 1=manual) 
# - gear = número de engranajes de la trasmisión 
# - carb = número de carburadores
data(mtcars)

## Observamos los datos (solo la cabecera porque son demasiados)
head(mtcars)
# Estructura del dataset
str(mtcars) # son demasiados datos. es mejor ver la estructura
# Nombres de las columnas (variables)
names(mtcars) 
# Nombres de las filas
row.names(mtcars) 
# Veamos un resumen de las variables
summary(mtcars)


# Poner el peso en kg
mtcars.new <- transform(mtcars,wt=wt*100/2)

# Cambiamos la variable "am" a lógica
class(mtcars.new$am)
mtcars.ew$am = as.logical(mtcars.new$am)
class(mtcars.new$am)

## Indexación
# Acceso a la columna "mpg"
mtcars.new$mpg
# Consultar las millas por galón (mpg) de los coches con 4 cilindros (cyl)
mtcars.new$mpg[mtcars$cyl==4]
# Sacar a otra tabla las columnas "disp" y "mpg"
cars.disp.mpg = mtcars.new[,c('disp', 'mpg')]
# Coches con menos de 6 cilindros
mtcars.new[mtcars.new$cyl<6,]
