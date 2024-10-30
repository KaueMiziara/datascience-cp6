cat("Integrantes:\n")
cat("Beatriz Cabello - 551214\n")
cat("Julia Santos - 97986\n")
cat("Kauê Miziara - 550451\n\n")

# Aula 16

a16 <- function(i, x, y, xlabel, ylabel) {
  cat(sprintf(
    "%s. Ajuste uma reta de mínimos quadrados para os dados da tabela.\n", i
  ))

  x <- as.numeric(x)
  y <- as.numeric(y)

  modelo <- lm(y ~ x)
  a <- coef(modelo)[1]
  b <- coef(modelo)[2]

  cat("Equação da reta: y =", round(a, 2), "+ (", round(b, 2), ")x\n")

  plot(x, y, main = sprintf("Exercício %s", i),
       xlab = xlabel, ylab = ylabel, pch = 16)
  abline(modelo, col = "blue", lwd = 2)
  legend("topleft",
         legend = paste("y =", round(a, 2), "+", round(b, 2), "* x"),
         col = "blue", lwd = 2)

  cat("\n\n")
}

## 1
x1 <- c(3, 4, 4, 2, 5, 3, 4, 5, 3, 2)
y1 <- c(57, 78, 72, 58, 89, 63, 73, 84, 75, 48)

a16("1", x1, y1, "Número de anos (x)", "Nota no teste (y)")

## 2
x2 <- c(2, 7, 9, 1, 5, 12)
y2 <- c(13, 21, 23, 14, 15, 21)

a16("2", x2, y2,
    "Número de semanas trabalhadas (x)",
    "Número de carros inspecionados (y)")

## 3
x3 <- c(13, 15, 18, 20, 19, 17, 21, 16)
y3 <- c(5.2, 5.1, 4.9, 4.6, 4.7, 4.8, 4.6, 4.9)

a16("3", x3, y3, "Número de horas corridas (x)", "Tempos de 1 milha (y)")

## 4
x4 <- c(75, 66, 92, 86, 65, 44, 60, 79)
y4 <- c(81, 57, 95, 77, 71, 62, 63, 84)

a16("4", x4, y4, "Intermediário", "Final")

## 5
x5 <- c(3, 5, 2, 8, 6, 9, 3, 4)
y5 <- c(86, 118, 49, 193, 164, 232, 73, 109)

a16("5", x5, y5, "Número de semanas (x)", "Aumento de velocidade (y)")
