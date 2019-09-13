# Novo projeto :
# By manel.

# Lançar moeda

resultado <- NULL
for(i in 1:1e3){
  moeda <- sample(0:1, size = 1)
  if(moeda == 1){
    resultado[i] <- 1
  }else{
    resultado[i] <- 0
  }
}
mean(resultado)
