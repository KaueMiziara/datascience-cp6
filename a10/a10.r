cat("Integrantes:\n")
cat("Beatriz Cabello - 551214\n")
cat("Julia Santos - 97986\n")
cat("Kauê Miziara - 550451\n\n")

# Aula 10

is_equilateral <- function(a, b, c) {
  return(a == b && b == c)
}

is_isosceles <- function(a, b, c) {
  return((a == b || b == c || a == c) && !is_equilateral(a, b, c))
}

is_scalene <- function(a, b, c) {
  return(a != b && b != c && a != c)
}

ex_1to3 <- function(i, a, b, c, t, f) {
  sprintf("%s) (%d, %d, %d): %s",
    i, a, b, c,
    if (f(a, b, c)) sprintf("É %s", t)
    else sprintf("Não é %s", t)
  )
}

## 1
cat("1. Teste se os triângulos são escalenos:\n")
cat(ex_1to3("a", 2, 5, 1, "escaleno", is_scalene), "\n")
cat(ex_1to3("b", 2, 2, 2, "escaleno", is_scalene), "\n")
cat(ex_1to3("c", 2, 3, 1, "escaleno", is_scalene), "\n")
cat(ex_1to3("d", 1, 1, 1, "escaleno", is_scalene), "\n")
cat(ex_1to3("e", 5, 5, 5, "escaleno", is_scalene), "\n")
cat(ex_1to3("f", 2, 2, 4, "escaleno", is_scalene), "\n\n")

## 2
cat("2. Teste se os triângulos são isóceles:\n")
cat(ex_1to3("a", 2, 5, 1, "isóceles", is_isosceles), "\n")
cat(ex_1to3("b", 2, 4, 2, "isóceles", is_isosceles), "\n")
cat(ex_1to3("c", 2, 3, 1, "isóceles", is_isosceles), "\n")
cat(ex_1to3("d", 1, 5, 1, "isóceles", is_isosceles), "\n")
cat(ex_1to3("e", 2, 5, 5, "isóceles", is_isosceles), "\n")
cat(ex_1to3("f", 2, 2, 2, "isóceles", is_isosceles), "\n\n")

## 3
cat("3. Teste se os triângulos são equiláteros:\n")
cat(ex_1to3("a", 2, 5, 1, "equilátero", is_equilateral), "\n")
cat(ex_1to3("b", 2, 2, 2, "equilátero", is_equilateral), "\n")
cat(ex_1to3("c", 2, 3, 1, "equilátero", is_equilateral), "\n")
cat(ex_1to3("d", 1, 5, 1, "equilátero", is_equilateral), "\n")
cat(ex_1to3("e", 2, 5, 5, "equilátero", is_equilateral), "\n")
cat(ex_1to3("f", 2, 2, 2, "equilátero", is_equilateral), "\n\n")

## 4
ex_4 <- function(i, a, b, c) {
  type <- (if (is_equilateral(a, b, c)) "equilátero"
           else if (is_isosceles(a, b, c)) "isóceles"
           else "escaleno")

  sprintf("%s) (%d, %d, %d): %s", i, a, b, c, type)
}

cat("4. Teste se os triângulos são equiláteros, escalenos ou isóceles:\n")
cat(ex_4("a", 2, 5, 1), "\n")
cat(ex_4("b", 2, 2, 2), "\n")
cat(ex_4("c", 2, 3, 1), "\n")
cat(ex_4("d", 1, 5, 1), "\n")
cat(ex_4("e", 2, 5, 5), "\n")
cat(ex_4("f", 2, 2, 2), "\n\n")

## 5
cat("5. Calular a média do conjunto de dados dos itens abaixo:\n")

### a)
d5a <- c(10, 15, 23, 47, 92, 9, 7,
         6, 12, 10, 15, 23, 47, 92,
         9, 7, 6, 12, 17, 54, 89, 78)
cat("a) ", mean(d5a), "\n")

### b)
d5b <- c(110, 115, 231, 147, 92, 119, 117,
         126, 102, 123, 145, 123, 122, 102)
cat("b) ", mean(d5b), "\n")

### c)
d5c <- c(10, 18, 21, 49, 82, 99, 77, 86, 102, 100,
         105, 123, 147, 92, 119, 107, 106, 102, 117,
         54, 89, 78, 110, 115, 231, 147, 92, 119, 117,
         126, 102, 123, 145, 123, 122, 102, 15, 23, 47,
         92, 9, 7, 6, 12, 17, 54, 89, 78, 110, 115, 231,
         147, 92, 119, 117, 126, 102, 119, 117, 126, 102,
         123, 145, 123, 122, 102, 15, 23)
cat("c) ", mean(d5c), "\n\n")


## 6
ex6 <- function(t) {
  if (t > 201) return("Elevada")
  if (t > 120) return("Faixa de trabalho")
  return("Baixa")
}

cat("6. Considere as temperatura na tabela. Classifique-as em:\n")
cat("- Baixa se for menor do que $99$ ºC;\n")
cat("- Faixa de trabalho se estiver entre $120$ ºC e $200$ ºC;\n")
cat("- Elevada se for maior do que $201$ ºC.\n\n")

temps <- c(27, 39, 52, 85, 137, 182, 214)
for (t in temps) {
  cat(sprintf("%d ºC \t %s\n", t, ex6(t)))
}
cat("\n")


## 7
cat("7. A partir dos dados fornecidos:\n")

ages <- c(28, 6, 17, 48, 63, 47, 27, 21, 3, 7,
          12, 39, 50, 54, 33, 45, 15, 24, 1, 7,
          36, 53, 46, 27, 5, 10, 32, 50, 52, 11,
          42, 22, 3, 17, 34, 56, 25, 2, 30, 10,
          33, 1, 49, 13, 16, 8, 31, 21, 6, 9, 2, 11, 32,
          25, 0, 55, 23, 41, 29, 4, 51, 1, 6, 31, 5, 5,
          11, 4, 10, 26, 12, 6, 16, 8, 2, 4, 28)

# a) Determine o número de amostras (n)
n <- length(ages)
cat("- Número de amostras:", n, "\n")

# b) Calcule os valores de k (intervalos de classe)
k <- ceiling(1 + 3.22 * log10(n))
cat("- Intervalos de classe:", k, "\n")

# - Apresente o menor e maior valor dos dados
min_age <- min(ages)
max_age <- max(ages)
cat("- Menor e maior valores -> min:", min_age, "; max:", max_age, "\n")

# - Determine a amplitude dos dados
amp <- max_age - min_age
cat("- Amplitude:", amp, "\n")

# - Calcule o comprimento dos intervalos de classe (h)
h <- ceiling(amp / k)
cat("- Comprimento dos intervalos:", h, "\n")

# - Calcule a média dos dados
m_ages <- mean(ages)
cat("- Média dos dados:", m_ages, "\n")

# Intervalos
int <- seq(min_age, max_age, by = h)
cat("- Intervalos:\n")
for (i in 1:(length(int) - 1)) {
  cat("[", int[i], ",", int[i + 1] - 1, "]\n")
}
cat("[", 56, ",", 63, "]\n")