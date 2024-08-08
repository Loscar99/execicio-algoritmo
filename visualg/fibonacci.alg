algoritmo "funcaoFibonacci"
var
   n1, n2, n3, det, cont: inteiro
funcao SerieFibonacci(var x, y: inteiro): inteiro
var
z: inteiro
inicio
      z <- x + y
      x <- y
      y <- z
      retorne z
fimfuncao
inicio
      escreval ("Quantos termos da serie de Fibonacci você deseja? ")
      leia (det)
      n1 <- 0
      escreva (n1)
      n2 <- 1
      escreva (n2)
      para cont <- 3 ate det faca
           n3 <- SerieFibonacci(n1, n2)
           escreva (n3)
      fimpara
fimalgoritmo
