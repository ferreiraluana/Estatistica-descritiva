
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

print("O peso médio das pessoas é:")
print(mean(file1$Peso.kg.))

print("A altura média das pessoas é:")
print(mean(file1$Altura.m.))

print("O IMC médio das pessoas é:")
print(mean(file1$IMC))

# Median

print("A mediana do Peso(kg) das pessoas é:")
print(median(file1$Peso.kg.))

print("A mediana da Altura(m) das pessoas é:")
print(median(file1$Altura.m.))

print("A mediana do IMC das pessoas é:")
print(median(file1$IMC))

# Standard Deviation

print("O desvio-padrão do Peso médio das pessoas é:")
print(sd(file1$Peso.kg.))

print("O desvio-padrão da Altura(m) média das pessoas é:")
print(sd(file1$Altura.m.))

print("O desvio-padrão do IMC médio das pessoas é:")
print(sd(file1$IMC))
