algoritmo "ordenarVetores"
var
   vet: vetor[1..10] de Inteiro
   i, s, aux: inteiro
inicio
      Para i <- 1 ate 10 faca
           Escreva ("Digite um valor: ")
           leia (vet[i])
      FimPara
      
      Para i <- 1 ate 9 faca
           Para s <- i + 1 ate 10 faca
                Se (vet[i] > vet[s]) entao
                   aux <- vet[i]
                   vet[i] <- vet[s]
                   vet[s] <- aux
                FimSe
           FimPara
      FimPara

      Para i <- 1 ate 10 faca
           Escreva (" [", vet[i], "] ")
      FimPara
fimalgoritmo
