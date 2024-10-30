# Aula 15 - Exercícios

### Integrantes
- Beatriz Cabello - 551214
- Julia Santos - 97986
- Kauê Miziara - 550451

## 1. Qual a diferença de regressão linear simples de regressão linear múltipla?
- Regressão simples: analisa como uma variável dependente varia de acordo com uma variável independente. A equação resulta em uma reta que ilustra a relação.

- Regressão múltipla: é uma extensão da regressão simples; analisa a relação entre uma variável dependente e duas ou mais independentes, permitindo modelar situações mais complexas.

## 2. Para que serve saber a relação entre duas variáveis? Explique e dê exemplos (diferentes dos apresentados na aula).
Analisar a relação entre duas variáveis evidencia a como as mudanças sofridas por uma influenciam o estado da outra, facilitando a predição de resultados futuros. Para exemplificar relações úteis, temos:
- Retornos de uma carteira de investimentos em função dos preços das ações;
- Porcentagem da população desempregada em função do ano.

## 3. Quais os Modelos de Regressão? Explique cada um.
- **Simples Linear**: usado quando a relação entre as variáveis se aproxima de uma reta, relaciona uma variável independente a uma dependente. Usado quando a relação entre variáveis parece ser linear.
- **Simples não Linear**: relaciona uma variável independente a uma dependente, mas sem assumir uma relação linear, podendo se ajustar a uma curva. Usado quando os dados mostram padrões não lineares.
- **Multivariado Linear**: analisa a relação entre múltiplas variáveis independentes e uma dependente, assumindo uma relação linear. Útil para prever o comportamento da variável dependente considerando múltiplos fatores.
- **Multivariado não Linear**: analisa a relação entre múltiplas variáveis independentes e uma dependente, sem assumir que a relação é linear. Aplicado quando a variáveis independentes têm interações complexas que afetam a variável dependente.

## 4. Como é a relação entre as variáveis? Explique cada uma.
- **Direta**: uma variável tende a aumentar quando a outra também aumenta, ou vice-versa;
- **Inversa**: uma variável tende a aumentar quando a outra diminui, ou vice-versa;
- **Nula**: não há relação clara entre as variáveis, a mudança de uma não afeta a outra.

## 5. O que é um diagrama de dispersão?
É um gráfico que exibe pontos de dados para duas variáveis em um sistema de coordenadas.<br>
Cada ponto representa uma observação, facilitando a visualização de padrões, tendências e possíveis relações entre as variáveis.

## 6. Quais são as relações do diagrama de dispersão? Explique cada uma e faça um gráfico ilustrativo para cada uma.
- **Direta**: os pontos se alinham de forma ascendente - uma variável aumenta à medida que a outra aumenta;
- **Inversa**: os pontos se alinham de forma descendente - uma variável aumenta à medida que a outra diminui;
- **Nula**: não há padrão entre as variáveis.

> O código que gera os gráficos está no arquivo `a15.r`.
```r
par(mfrow = c(1, 3))
plot(x, y_positiva, main = "Relação Direta",
     xlab = "X", ylab = "Y", col = "blue")
plot(x, y_negativa, main = "Relação Inversa",
     xlab = "X", ylab = "Y", col = "red")
plot(x, y_nula, main = "Relação Nula",
     xlab = "X", ylab = "Y", col = "green")
par(mfrow = c(1, 1))
```

## 7. O que é uma análise de regressão?
Uma técnica estatística usada para investigar a relação entre uma variável dependente e uma ou mais independentes, prevendo valores e buscando entender o impacto de variáveis no comportamento dos dados.

## 8. O que é uma reta de regressão? Explique cada elemento dessa equação.
É a linha que melhor ajusta os dados em uma análise de analisados durante uma regressão linear.<br>

Sua forma geral é:

$$y= a + bx$$

Em que
- $y$ é a variável dependente (resposta);
- $x$ é a variável independente (preditor);
- $a$ é o valor de $y$ em que a reta corta o eixo das abscissas;
- $b$ é o coeficiente angular da reta (inclinação), que indica a variação de $y$ para cada valor de $x$.

## 9. O que são o Y observado e o Y’ estimado?
- **Y Observado**: valor real da variável dependente para cada observação no conjunto de dados.
- **Y' Estimado**: valor previsto da variável dependente com base na reta de regressão $y = a + bx$.

## 10. O que é a dispersão?
É a variabilidade dos dados em relação à média, mostrando quão distantes os dados estão uns dos outros.<br>
Uma dispersão maior indica que os valores estão mais distantes; uma dispersão menor indica proximidade.

## 11. Qual a diferença entre Desvio Padrão e Erro Padrão? Monte um gráfico para ilustrar.
- **Desvio padrão** ($\sigma$): mede a variabilidade dos dados em torno da média de uma amostra;
- **Erro Padrão** (SE): mede a precisão da média amostral em relação à média populacional. Quanto menor o SE, maior a precisão da média amostral como estimativa da média populacional.

> O código que gera o gráfico está no arquivo `a15.r`.

```r
hist(data, main = "Desvio Padrão vs. Erro Padrão", 
     xlab = "Valores", col = "lightblue")
abline(v = mean(data), col = "red", lwd = 2)
abline(v = mean(data) + sd_data, col = "blue", lwd = 2, lty = 2)
abline(v = mean(data) - sd_data, col = "blue", lwd = 2, lty = 2)
abline(v = mean(data) + se_data, col = "green", lwd = 2, lty = 3)
abline(v = mean(data) - se_data, col = "green", lwd = 2, lty = 3)
legend("topright", legend = c("Média", "Desvio Padrão", "Erro Padrão"), 
       col = c("red", "blue", "green"), lty = c(1, 2, 3), lwd = 2)
```

## 12. Quais são os objetivos da regressão?
Compreender a relação entre variáveis e a influência que cada uma exerce sobre as outras, de forma a possibilitar previsões/estimativas de valores futuros, estudar os dados históricos e auxiliar em tomadas de decisão.