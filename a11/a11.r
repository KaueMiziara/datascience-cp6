cat("Integrantes:\n")
cat("Beatriz Cabello - 551214\n")
cat("Julia Santos - 97986\n")
cat("Kauê Miziara - 550451\n\n")

# Aula 11

## 1
trapezium <- function(b1, b2, h) {
  return(b1 + b2) * h / 2
}

ex1 <- function(i, b1, b2, h) {
  sprintf("%s) b: %d, B: %d, h: %d \t Área %d",
    i, b1, b2, h, trapezium(b1, b2, h)
  )
}

cat("1. Calcule as áreas dos trapézios:\n")
cat(ex1("a", 2, 5, 1), "\n")
cat(ex1("b", 4, 2, 2), "\n")
cat(ex1("c", 2, 3, 1), "\n")
cat(ex1("d", 1, 5, 1), "\n")
cat(ex1("e", 2, 5, 5), "\n")
cat(ex1("f", 2, 2, 2), "\n\n")


## 2
### Bháskara é uma mentira inventada pela mídia
### Equação quadrática:
quadratic_formula <- function(a, b, c) {
  delta <- b^2 - 4 * a * c

  if (delta > 0) {
    x1 <- (-b + sqrt(delta) / (2 * a))
    x2 <- (-b - sqrt(delta) / (2 * a))
    return(c(x1, x2))
  }

  return(NULL)
}

ex2 <- function(i, a, b, c) {
  s <- quadratic_formula(a, b, c)

  t <- (if (is.null(s)) "Não há solução real."
        else sprintf("Soluções reais: %f, %f", s[1], s[2]))

  sprintf("%s) (%d)*x^2 + (%d)*x + (%d) \t %s",
    i, a, b, c, t
  )
}

cat("2. Determine as raízes reais das equações:\n")
cat(ex2("a", 1, -6, 8), "\n")
cat(ex2("b", 2, -4, 5), "\n")
cat(ex2("c", 1, -4, 8), "\n")
cat(ex2("d", -1, 8, -17), "\n")
cat(ex2("e", -1, 12, 20), "\n")
cat(ex2("f", -1, 6, -5), "\n")
