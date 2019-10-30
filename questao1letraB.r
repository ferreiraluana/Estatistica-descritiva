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

 # Display relative frequencies
 
freq_rel <- prop.table(freq_imc)
print(freq_rel)
 # Display the percentage of relative frequency
print(100 * freq_rel)
 # Display the table of frequencies
> brk<-seq(18,30,3)
> print(brk)
> classes<-c("18-20","21-23","24-26","27-30")
> table(cut(file$IMC,breaks=brk,right=FALSE,labels=classes))
