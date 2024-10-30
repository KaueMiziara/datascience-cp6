cat("Integrantes:\n")
cat("Beatriz Cabello - 551214\n")
cat("Julia Santos - 97986\n")
cat("Kauê Miziara - 550451\n\n")

# Aula 15

# Os exercícios de 1 a 5, 7 a 10, 12, além da parte teórica do 6 e do 11
# estão no arquivo `a15/README.md`.

## 6
x <- 1:100
y_positiva <- x + rnorm(100, sd = 5)
y_negativa <- -x + rnorm(100, sd = 5)
y_nula <- rnorm(100, sd = 10)

par(mfrow = c(1, 3))
plot(x, y_positiva, main = "Relação Direta",
     xlab = "X", ylab = "Y", col = "blue")

plot(x, y_negativa, main = "Relação Inversa",
     xlab = "X", ylab = "Y", col = "red")

plot(x, y_nula, main = "Relação Nula",
     xlab = "X", ylab = "Y", col = "green")

par(mfrow = c(1, 1))


## 11
data <- rnorm(100, mean = 50, sd = 10)

sd_data <- sd(data)
se_data <- sd_data / sqrt(length(data))

hist(data, main = "Desvio Padrão vs. Erro Padrão",
     xlab = "Valores", col = "lightblue")

### Linha da média
abline(v = mean(data), col = "red", lwd = 2)

### Linhas de sigma
abline(v = mean(data) + sd_data, col = "blue", lwd = 2, lty = 2)
abline(v = mean(data) - sd_data, col = "blue", lwd = 2, lty = 2)

### Linhas de SE
abline(v = mean(data) + se_data, col = "orange", lwd = 2, lty = 3)
abline(v = mean(data) - se_data, col = "orange", lwd = 2, lty = 3)

legend("topright", legend = c("Média", "Desvio Padrão", "Erro Padrão"), 
       col = c("red", "blue", "orange"), lty = c(1, 2, 3), lwd = 2)