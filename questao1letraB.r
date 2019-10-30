# Table with IMC column

file <- read.csv("tablej.csv",TRUE,sep = ",")
file$IMC<- (file$Peso/(file$Altura)^2)

# Display absolute frequencies

Peso.kg.frequence <- table(file$Peso.kg.)
print("Tabela de frequência absoluta do Peso(kg):")
print(Peso.kg.frequence)

Altura.m.frequence <- table(file$Altura.m.)
print("Tabela de frequência absoluta da Altura(m):")
print(Altura.m.frequence)

IMC.frequence <- table(file$IMC)
print("Tabela de frequência absoluta do IMC:")
print(IMC.frequence)

# Display IMC relative frequence
 
IMC.relative.frequence <- prop.table(IMC.frequence)
print("Tabela de frequência relativa do IMC:")
print(IMC.relative.frequence)

# Display the percentage of IMC relative frequence

IMC.percentage.relative.frequence <- IMC.relative.frequence*100
print(IMC.percentage.relative.frequence)
