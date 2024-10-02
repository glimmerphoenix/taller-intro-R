data(mtcars) # carga hoja de datos "mtcars" en R
mtcars # miramos los datos
str(mtcars) # son demasiados datos. es mejor ver la estructura
names(mtcars) # miramos los nombres de las columnas
row.names(mtcars) # miramos los nombres de filas (cada fila, un coche)
# datos de la columna "mpg"
mtcars$mpg
# datos de columna "mpg" pero de coches con 4 cilindros (columna "cyl")
mtcars$mpg[mtcars$cyl==4]
# hoja de datos solo con columnas "disp" y "mpg" en este orden
mtcars[,c('disp', 'mpg')]
# hoja de datos solo con columnas "disp" y "mpg" en este orden
# pero solo de coches de 4 cilindros
mtcars[mtcars$cyl==4, c('disp', 'mpg')]
