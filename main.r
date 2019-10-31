
# Table with IMC column

file <- read.csv("table.csv",TRUE,sep = ",")
file$IMC<- (file$Peso/(file$Altura)^2)
write.csv(file, "table_imc.csv", row.names = FALSE)

# Absolute frequencies

Escolaridade.frequence <- table(file$Escolaridade)
write.csv(Peso.kg.frequence, "Escol_freq.csv", row.names = FALSE)

Peso.kg.frequence <- table(file$Peso.kg.)
write.csv(Peso.kg.frequence, "Peso_freq.csv", row.names = FALSE)

Altura.m.frequence <- table(file$Altura.m.)
write.csv(Altura.m.frequence, "Altura_freq.csv", row.names = FALSE)

IMC.frequence <- table(file$IMC)
write.csv(IMC.frequence, "Imc_freq.csv", row.names = FALSE)

# Relative frequencies

Escolaridade.relative.frequence <- prop.table(Escolaridade.frequence)
write.csv(Escolaridade.relative.frequence, "Escolaridade_freq_rel.csv", row.names = FALSE)

Peso.kg.relative.frequence <- prop.table(Peso.kg.frequence)
write.csv(Peso.kg.relative.frequence, "Peso_freq_rel.csv", row.names = FALSE)

Altura.m.relative.frequence <- prop.table(Altura.m.frequence)
write.csv(Altura.m.relative.frequence, "Altura_freq_rel.csv", row.names = FALSE)

IMC.relative.frequence <- prop.table(IMC.frequence)
write.csv(IMC.relative.frequence, "Imc_freq_rel.csv", row.names = FALSE)

# Percentage of relative frequencies

write.csv(Escolaridade.relative.frequence*100, "Escol_freq_rel_porc.csv", row.names = FALSE)
write.csv(Peso.kg.relative.frequence*100, "Peso_freq_rel_porc.csv", row.names = FALSE)
write.csv(Altura.m.relative.frequence*100, "Altura_freq_rel_porc.csv", row.names = FALSE)
write.csv(IMC.relative.frequence*100, "Imc_freq_rel_porc.csv", row.names = FALSE)

# Mean

file1 <- read.csv("table_imc.csv",TRUE, sep = ",")

p <- paste("O peso médio das pessoas é:"," ",mean(file1$Peso.kg.), "\n",
           "A altura média das pessoas é:", " ", mean(file1$Altura.m.), "\n",
           "O IMC médio das pessoas é:", " ", mean(file1$IMC))
write.table(p, file = "mean.txt", sep = "", row.names = FALSE, col.names = FALSE)

# Median

q <- paste("A mediana do Peso(kg) das pessoas é:"," ",median(file1$Peso.kg.), "\n",
           "A mediana da Altura(m) das pessoas é:", " ", median(file1$Altura.m.), "\n",
           "A mediana do IMC das pessoas é:", " ", median(file1$IMC))
write.table(q, file = "median.txt", sep = "", row.names = FALSE, col.names = FALSE)

# Standard Deviation

r <- paste("O desvio-padrão do Peso médio das pessoas é:"," ",sd(file1$Peso.kg.), "\n",
           "O desvio-padrão da Altura(m) média das pessoas é:", " ", sd(file1$Altura.m.), "\n",
           "O desvio-padrão do IMC médio das pessoas é:", " ", sd(file1$IMC))
write.table(p, file = "desvio_padrao.txt", sep = "", row.names = FALSE, col.names = FALSE)

# Decile

decil4 <- quantile(file$IMC, prob = seq(0, 1, length = 11), type = 5)[5]

# Boxplot

boxplot(file$IMC,main="Boxplot")
points (1, mean(file$IMC), col = 6, pch =19)
