algoritmo "matriz"
var
   m: vetor[1..2, 1..2] de inteiro
   l, c: inteiro
inicio
      Para l <- 1 ate 2 faca
           Para c <- 1 ate 2 faca
                Escreva ("Digite o valor da posição [", l, ",", c, "] ")
                Leia (m[l,c])
           FimPara
      FimPara
      Para l <- 1 ate 2 faca
           Para c <- 1 ate 2 faca
                Escreva( m[l,c]:4)
           FimPara
           EscrevaL()
      FimPara
fimalgoritmo
