algoritmo "semnome"
var
  T1, T2, cont: inteiro
procedimento ProximoFibonacci (var A, B: Inteiro)
var
   C: inteiro
inicio
      C <- A + B
      escreval (C)
      A <- B
      B <- C
fimprocedimento
inicio
      T1 <- 0
      escreval (T1)
      T2 <- 1
      escreval (T2)
      para cont <- 3 ate 10 faca
           ProximoFibonacci (T1, T2)
      fimpara
fimalgoritmo
