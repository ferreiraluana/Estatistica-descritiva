# Moda de Czuber

# l = limite inferior da classe de maior frequência
# d1 = maior frequência - frequência da classe anterior à classe de maior frequência
# d2 = maior frequência - frequência da classe posterior à classe de maior frequência
# h = amplitude do intervalo de maior frequência (limite superior - limite inferior)

l <- 24
d1 <- 8-3
d2 <- 8-4
h <- 26-24
czuber <- l + (d1/(d1+d2))*h
print(czuber)

#moda = 25.11111