cat("Integrantes:\n")
cat("Beatriz Cabello - 551214\n")
cat("Julia Santos - 97986\n")
cat("Kauê Miziara - 550451\n\n")

# Aula 13
modes <- function(x) {
  ux <- unique(x)
  tab <- tabulate(match(x, ux))
  ux[tab == max(tab)]
}

a13 <- function(data) {
  media <- mean(data)
  mediana <- median(data)
  modas <- modes(data)
  cat("a) Média:", media, "\n")
  cat("a) Mediana:", mediana, "\n")
  cat("a) Modas:", modas, "\n")

  quartis <- quantile(data)
  q1 <- quartis[2]
  q3 <- quartis[4]
  cat("b) Primeiro quartil:", q1, "\n")
  cat("b) Terceiro quartil:", q3, "\n")

  p10 <- quantile(data, 0.10)
  p75 <- quantile(data, 0.75)
  p90 <- quantile(data, 0.90)
  cat("c) P10:", p10, "\n")
  cat("c) P75:", p75, "\n")
  cat("c) P90:", p90, "\n")

  variancia <- var(data)
  cat("d) Variância:", variancia, "\n")

  std <- sd(data)
  cat("e) Desvio-padrão:", std, "\n")

  coef_variacao <- (std / media) * 100
  cat("f) Coeficiente de variação:", coef_variacao, "%\n")

  n <- length(data)
  assimetria <- sum((data - media)^3) / ((n - 1) * (std^3))
  cat("g) Assimetria da curva:", assimetria, "\n")

  if (assimetria > 0) {
    cat("A distribuição possui assimetria positiva.\n")
  } else if (assimetria < 0) {
    cat("A distribuição possui assimetria negativa.\n")
  } else {
    cat("A distribuição é simétrica.\n")
  }

  cat("i) Histograma dos dados:\n")
  hist(data,
       main = "Histograma dos Dados",
       xlab = "Valores", ylab = "Frequência",
       col = "skyblue", border = "black")
}

# 1

cat("1. Massa de dados de 2000 amostras com incremento de 10:\n")
data1 <- seq(0, by = 10, length.out = 2000) + runif(2000, min = 0, max = 10)
cat(head(data1), "\n")
a13(data1)

cat("\n\n")

cat("2. Massa de dados de 3000 amostras, incremento de 10 (apenas inteiros):\n")
data2 <- sample(seq(150, 3000, by = 10), 3000, replace = TRUE)
cat(head(data2), "\n")
a13(data2)

cat("\n\n")

cat("3. A partir das amostras, calcule:\n")
data3 <- c(
  37, 38, 40, 45, 48, 50, 52, 55, 58, 60,
  60, 60, 60, 61, 61, 63, 64, 64, 64, 65,
  65, 66, 66, 68, 68, 70, 72, 72, 72, 72,
  75, 77, 78, 79, 80, 85, 90, 92, 95, 98
)

cat(head(data3), "\n")
a13(data3)

cat("\n\n")

cat("4. A partir das amostras, calcule:\n")
data4 <- c(
  37, 38, 40, 45, 48, 50, 52, 55, 58, 60, 60, 60, 60, 61, 61, 63, 64, 64, 64, 65, 65, 66, 66, 68, 68, # nolint: line_length_linter
  70, 72, 72, 72, 72, 75, 77, 78, 79, 80, 85, 90, 92, 95, 98, 65, 66, 66, 68, 68, 70, 72, 72, 72, 72, # nolint: line_length_linter
  75, 77, 78, 79, 80, 85, 90, 92, 95, 98, 37, 38, 40, 45, 48, 50, 52, 55, 58, 60, 60, 60, 60, 61, 61, # nolint: line_length_linter
  63, 64, 64, 64, 65, 37, 38, 40, 45, 48, 50, 52, 55, 58, 60, 60, 60, 60, 61, 61, 63, 64, 64, 64, 65, # nolint: line_length_linter
  75, 77, 78, 79, 80, 85, 90, 92, 95, 98, 37, 38, 40, 45, 48, 50, 52, 55, 58, 60, 60, 60, 60, 61, 61, # nolint: line_length_linter
  63, 64, 64, 64, 65, 65, 66, 66, 68, 68, 70, 72, 72, 72, 72, 75, 77, 78, 79, 80, 85, 90, 92, 95, 98, # nolint: line_length_linter
  65, 66, 66, 68, 68, 70, 72, 72, 72, 72, 75, 77, 78, 79, 80, 85, 90, 92, 95, 98
)

cat(head(data4), "\n")
a13(data4)

cat("\n\n")