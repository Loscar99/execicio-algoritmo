algoritmo "seq-fibonacci"
var
   cont, n1, n2, n3: inteiro
inicio
      n1<- 0
      n2 <- 1
      escreva (n1)
      escreva (n2)
      para cont <- 1 ate 13 faca
          n3 <- n1 + n2
          escreva (n3)
          n1 <- n2
          n2 <- n3
      fimpara
fimalgoritmo
