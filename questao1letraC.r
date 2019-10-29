file <- read.csv("table.csv",TRUE, sep = ",")

print("O peso médio das pessoas é:")
print(mean(file$Peso.kg.))

print("A altura média das pessoas é:")
print(mean(file$Altura.m.))
