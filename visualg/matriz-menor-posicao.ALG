algoritmo "semnome"
var
   m: vetor[1..7, 1..4] de inteiro
   posi: vetor[1..2] de inteiro
   i, j: inteiro
   menor_valor: inteiro
   
inicio
      para i de 1 ate 7 faca
           para j de 1 ate 4 faca
                leia(m[i,j])
                se (i = 1) e (j = 1) entao
                   menor_valor <- m[i,j]
                   posi[1] <- i
                   posi[2] <- j
                senao
                     se (menor_valor > m[i,j]) entao
                        menor_valor <- m[i,j]
                        posi[1] <- i
                        posi[2] <- j
                     fimse
                fimse
           fimpara
      fimpara
      
      limpatela
      escreval("----- M  A  T  R  I  Z -----")
      escreval()
      
      escreva("":5)
      para j de 1 ate 4 faca
           escreva(j:5)
      fimpara
      
      escreval()
      
      escreva("":5)
      escreval("----------------------")
      
      para i de 1 ate 7 faca
           escreva(i, "  |")
           para j de 1 ate 4 faca
                escreva(m[i,j]:5)
           fimpara
           escreval("  |")
      fimpara
      escreva("":5)
      escreval("----------------------")
      escreval()
      
      escreval("Menor valor: ", menor_valor)
      escreval("Posição: A", posi[1]:1, posi[2]:1)
      
fimalgoritmo