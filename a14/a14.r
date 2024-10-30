cat("Integrantes:\n")
cat("Beatriz Cabello - 551214\n")
cat("Julia Santos - 97986\n")
cat("Kauê Miziara - 550451\n\n")

# Aula 14

modes <- function(x) {
  ux <- unique(x)
  tab <- tabulate(match(x, ux))
  ux[tab == max(tab)]
}

a14 <- function(data) {
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
  p90 <- quantile(data, 0.90)
  cat("c) P10:", p10, "\n")
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

cat("1. Crie um vetor com 3500 dados e calcule:\n")
data <- sample(0:3500, 3500, replace = TRUE)
a14(data)
