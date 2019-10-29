# Display table
file <- read.csv("table.csv",TRUE,sep = ",")
print(file)

# Display specific column
print(file$Nome)
print(file$Escolaridade)
print(file$Peso.kg.)
print(file$Altura.m.)
