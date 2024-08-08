algoritmo "numeros-primos-100"
var
   x: vetor[1..10] de inteiro
   num_primos, c, c2, i, num_div, num: inteiro
inicio
      c <- 100
      repita
            c <- c + 1
            
            num_div <- 0
            para i de 1 ate (c) faca
                 se (c % i = 0) entao
                    num_div <- num_div + 1
                 fimse
            fimpara
            se (num_div = 2) entao
                    num_primos <- num_primos + 1
                    x[num_primos] <- c
            fimse
      ate (num_primos = 10)
      
      escreval("Números primos acima de 100: ")
      para c de 1 ate 10 faca
           escreva(x[c], "":2)
      fimpara
fimalgoritmo