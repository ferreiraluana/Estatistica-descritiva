# Table with IMC column

file <- read.csv("table.csv",TRUE,sep = ",")
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

# Display relative frequencies

Peso.kg.relative.frequence <- prop.table(Peso.kg.frequence)
print("Tabela de frequência relativa do Peso(kg):")
print(Peso.kg.relative.frequence)

Altura.m.relative.frequence <- prop.table(Altura.m.frequence)
print("Tabela de frequência relativa da Altura(m):")
print(Altura.m.relative.frequence)

IMC.relative.frequence <- prop.table(IMC.frequence)
print("Tabela de frequência relativa do IMC:")
print(IMC.relative.frequence)

# Display the percentage of relative frequencies

print("Tabela de porcentagem da frequência relativa do Peso(kg):")
print(Peso.kg.relative.frequence)

print("Tabela de porcentagem da frequência relativa da Altura(m):")
print(Altura.m.relative.frequence*100)

print("Tabela de porcentagem da frequência relativa do IMC:")
print(IMC.relative.frequence*100)
