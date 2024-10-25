
# Función para calcular el valor futuro de una anualidad vencida
valor_futuro <- function(anualidad, tasa, n) {
  anualidad * (((1 + tasa) ^ n - 1) / tasa)
  
  return(xSalida)
}

# Función para calcular la anualidad, dado el valor futuro, la tasa y el número de pagos
anualidad_futuro <- function(valor_futuro, tasa, n) {
  valor_futuro / (((1 + tasa) ^ n - 1) / tasa)
  
  return(xSalida)
}

# Función para calcular el número de pagos, dado el valor futuro, la anualidad y la tasa
numero_pagos_futuro <- function(valor_futuro, anualidad, tasa) {
  n <- log((valor_futuro * tasa / anualidad) + 1) / log(1 + tasa)
  round(n)
  return(round(n))
  
}

# Función para calcular la tasa del periodo, dado el valor futuro, la anualidad y el número de pagos
tasa_futuro <- function(valor_futuro, anualidad, n) {
  f <- function(tasa) {
    valor_futuro - anualidad * (((1 + tasa) ^ n - 1) / tasa)
  }
  uniroot(f, lower = 0, upper = 1)$root
  
  return(xSalida)
}

# Función para calcular el valor actual de una anualidad vencida
valor_actual <- function(anualidad, tasa, n) {
  anualidad * (1 - (1 + tasa) ^ -n) / tasa
  
  return(xSalida)
}

# Función para calcular la anualidad, dado el valor actual, la tasa y el número de pagos
anualidad_actual <- function(valor_actual, tasa, n) {
  valor_actual * tasa / (1 - (1 + tasa) ^ -n)
  
  return(xSalida)
}

# Función para calcular el número de pagos, dado el valor actual, la anualidad y la tasa
numero_pagos_actual <- function(valor_actual, anualidad, tasa) {
  n <- log(1 - (valor_actual * tasa / anualidad)) / log(1 + tasa)
  round(n)
  
  return(round(n))
}

# Función para calcular la tasa del periodo, dado el valor actual, la anualidad y el número de pagos
tasa_actual <- function(valor_actual, anualidad, n) {
  f <- function(tasa) {
    valor_actual - anualidad * (1 - (1 + tasa) ^ -n) / tasa
  }
  uniroot(f, lower = 0, upper = 1)$root
  
  return(xSalida)
}
