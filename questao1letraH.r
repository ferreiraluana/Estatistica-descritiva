# Display histograms

file <- read.csv("table.csv",TRUE, sep = ",")

altura <- hist(file$Altura.m., main = "Frequência de Altura", xlab = "Altura", ylab = "Quantidade de Pessoas")
peso <- hist(file$Peso.kg., main = "Frequência Peso", xlab = "Peso(kg)", ylab = "Quantidade de Pessoas")

print(altura)
print(peso)
