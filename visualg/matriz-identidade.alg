algoritmo "matrizIdentidade"
var
   mID: vetor[1..4, 1..4] de inteiro
   i, j: inteiro
inicio
      Para i <- 1 ate 4 faca
           Escreva(" |")
           Para j <- 1 ate 4 faca
                Se (i = j) entao
                   mID[i,j] <- 1
                senao
                     mID[i,j] <- 0
                FimSe
                Escreva(mID[i,j]:4)
           FimPara
           EscrevaL("   | ")
      FimPara
fimalgoritmo
