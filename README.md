## Funciones de Anualidades Vencidas
Este repositorio contiene funciones en R para el cálculo de anualidades vencidas, útiles en el ámbito de las matemáticas financieras.

```{r}
source(¨https://raw.githubusercontent.com/cris2740/formulas-de-anualidades-vencidas/refs/heads/main/anualidadesvencidas.R¨)
```
Las funciones permiten calcular:

# Valor Futuro de una anualidad vencida

$VA$=1,000
$i$=24.0% Anualizado
$r$=2.0% Mensual
$t$=7 Meses
```{r}
# Valores de entrada
anualidad = 1000
tasaPeriodo = 0.02
nPeriodos = 7

# Cálculo del valor futuro
valorFuturo = valor_futuro(anualidad = anualidad, tasa = tasaPeriodo, n = nPeriodos)
print(valorFuturo)
```

valor_futuro <- function(anualidad, tasa, n) {
  anualidad * (((1 + tasa) ^ n - 1) / tasa)

# Valor Actual de una anualidad vencida
# Tasa del periodo
# Número de pagos
