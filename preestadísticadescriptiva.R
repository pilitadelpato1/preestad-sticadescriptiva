getwd()
nuevo_dir = "C:/preestadísticadescriptiva"
setwd(nuevo_dir)

dir()
list.files()
if (file.exists(nuevo_dir)){
  cat("Directorio creado correctamente: ", nuevo_dir, "\n")
} else{
  cat("fallo al crear directorio: ", nuevo_dir, "\n")
}

#1
x = c(1,2,3,4,5)
y = c(9.1,2.4,7.5,1.3,3.4)

# Estructura de datos que agurpo diferentes tipos de datos, entre ellos numéricos y caracteres.
#Lo que lo diferencia de una lista es que esta tiene más de una dimensión.
#Estos dos vectores tienen una longitud de 5. 
#Integer se refiere a datos enteros y double hace referencia a datos decimales.


#2
x+y #suma

x-y #resta

x*y #Multiplicacion

x/y #Division

x^y #Elevar

#3
y^2

#4
y*10

#5
y+25

#6
max(y)

#7
min(y)

#8
abs(y)

#9
sqrt(y)

#10
sum(c(y))

#11
list = list(c(x,y))
print(list)
typeof(list)
str(list)
View(list)

#Se a utilizado tipo de dato double. Se han transformado los valores de x a double para así poder crear la lista.

#12
is.na(list)

#13
z = c(29,NA,12,46,73)

#14
mean(z)

#15
matriz = matrix(c(24,69,3,90,23,56,1,63,87,21,77,19),
                 nrow = 4,
                 ncol = 3,
                 byrow = FALSE)
print(matriz)
#Se rellenan en colunmas

#16
matriz_filas = matrix(c(24,69,3,90,23,56,1,63,87,21,77,19),
                 nrow = 4,
                 ncol = 3,
                 byrow = TRUE)
print(matriz_filas)

#17
a = matrix(c(1:9),
           nrow = 3,
           ncol = 3,
           byrow = FALSE)
print(a)

b = matrix(c(10:18),
           nrow = 3,
           ncol = 3,
           byrow = TRUE)
print(b)

#18
suma_matriz = a+b
print(suma_matriz)

resta_matriz = a-b
print(resta_matriz)

#Obtenemos un resultado negativo porque el número negativo es el mayor, y por tanto sale el resultado es negativo.

#19
matriz = matriz1
matriz1 = matrix(c(24,69,3,90,23,56,1,63,87,21,77,19),
                 nrow = 3,
                 ncol = 4,
                 byrow = TRUE)
print(matriz1)

#20
matriz*5

#21
matriz_mult = a*b
print(matriz_mult)

#22
matriz_mult[2,3]
matriz_mult[2, ]
matriz_mult[ ,3]



#Estadística Práctica 2
set.seed(125)
n_registros = 100

#1
num_cuentas = round(rnorm(100, mean = 50, sd = 10))
print(num_cuentas)

#2
media = mean(num_cuentas)
print(media)
#3
mediana = median(num_cuentas)
print(mediana)
#4
moda = as.numeric(names(sort(table(num_cuentas), decreasing = TRUE)[1]))
print(moda)

#5
range(num_cuentas)

#6
percentil_25 = quantile(num_cuentas, 0.25)
print(percentil_25)

#7
percentil_75 = quantile(num_cuentas, 0.75)
print(percentil_75)

#8
var(num_cuentas)

#9
sd(num_cuentas)

#10
hist(num_cuentas, main = "histograma")

#11)
boxplot(num_cuentas, main = "Número de cuentas", border = "black", horizontal = T)

#12
densidad = density(num_cuentas)
plot(densidad, main = "Gráfico de densidad", border = "blue")

#12.5
hist(num_cuentas, freq = FALSE, main = "Histograma y densidad",
     ylab = "densidad")

lines(densidad, lwd = 2, col = "red")
plot(dx, lwd = 2, col = "red",
     main = "Densidad")
rug(jitter(num_cuentas))


#13
barplot(num_cuentas, main = "Gráfico de barras", xlab = "yacimientos", ylab = "número de cuentas", border = "black", col = "pink")

#14
num_registros = 10

tipo_artefactos = c("fibula","puñal","lanza","asa","casco","clavo","lucerna","arco","punta","cuenta")
muestra_tipoartefacto = sample(tipo_artefactos, 10, replace =T)
print(muestra_tipoartefacto)

datos = data.frame(tipo_artefactos = muestra_tipoartefacto)
print(datos)
table(datos)


material = c("oseo","metal","ceramica","madera")
muestra_material = sample(material, 10, replace = T)
print(muestra_material)

datos = data.frame(material = muestra_material)
print(datos)
table(datos)


periodo_cultural = c("contemporáneo", "moderno", "prehistórico","antiguo")
muestra_periodocultural = sample(periodo_cultural, 10, replace=T)
print(muestra_periodocultural)

datos = data.frame(periodo_cultural = muestra_periodocultural)
print(datos)
table(datos)


estado_conservacion = c("mala", "buena", "media")
muestra_estadoconservacion = sample(estado_conservacion, 10, replace=T)
print(muestra_estadoconservacion)

datos = data.frame(estado_conservacion = muestra_estadoconservacion)
print(datos)
table(datos)



ubicacion_artefacto = c("UE1","UE2", "U3","UE4")
muestra_ubicacionartefacto = sample(ubicacion_artefacto, 10, replace=T)
print(muestra_ubicacionartefacto)

datos = data.frame(ubicacion_artefacto = muestra_ubicacionartefacto)
print(datos)
table(datos)




