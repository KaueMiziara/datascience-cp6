cat("Integrantes:\n")
cat("Beatriz Cabello - 551214\n")
cat("Julia Santos - 97986\n")
cat("Kauê Miziara - 550451\n\n")

# Aula 12

## 1
cat("1. Abrindo tabela em CSV criada utilizando LibreOffice:\n")
csv <- read.csv("./a12/a12csv.csv") # caminho relativo à raíz do projeto
# csv <- read.csv("./a12csv.csv") caminho relativo ao diretório "a12"

write.csv(csv, row.names = FALSE)
cat("\n\n")

## 2
data <- c(37, 38, 40, 45, 48, 50, 52, 55, 58, 60,
  60, 60, 60, 61, 61, 63, 64, 64, 64, 65,
  65, 66, 66, 68, 68, 70, 72, 72, 72, 72,
  75, 77, 78, 79, 80, 85, 90, 92, 95, 98
)

cat("2. A partir das amostras, determine:\n")

### a) Determine a média, a mediana, a moda;
modes <- function(x) {
  ux <- unique(x)
  tab <- tabulate(match(x, ux))
  ux[tab == max(tab)]
}

media <- mean(data)
mediana <- median(data)
modas <- modes(data)

cat("a) Média:", media, "\n")
cat("a) Mediana:", mediana, "\n")
cat("a) Modas:", modas, "\n")

### b) Encontre o primeiro e o terceiro quartis;
quartis <- quantile(data)
q1 <- quartis[2]
q2 <- quartis[4]

cat("b) Primeiro quartil:", q1, "\n")
cat("b) Terceiro quartil:", q2, "\n")

### c) Encontre o P10 e o P90;
p10 <- quantile(data, 0.10)
p90 <- quantile(data, 0.90)

cat("c) P10:", p10, "\n")
cat("c) P90:", p90, "\n")

### d) Variância;
variancia <- var(data)

cat("d) Variância:", variancia, "\n")

### e) Desvio-padrão;
std <- sd(data)

cat("e) Desvio-padrão:", std, "\n")

### f) Coeficiente de Variação;
coef_variacao <- (std / media) * 100
cat("f) Coeficiente de variação:", coef_variacao, "%\n")

### g) Determine o tipo de assimetria da curva.
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
