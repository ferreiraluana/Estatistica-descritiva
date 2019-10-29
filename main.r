# Display table
file <- read.csv("table.csv",TRUE,sep = ",")
print(file)

# Display specific column
print(file$Nome)
print(file$Altura.m.)

# Also an option
file_peso <- file$Peso.kg.
print(file_peso)
