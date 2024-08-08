algoritmo "soma-diferenca-matriz"
var
   n1, n2, m1, m2: vetor[1..4, 1..6] de inteiro
   i, j: inteiro

inicio
      //ler a matriz n1
      para i de 1 ate 4 faca
           para j de 1 ate 6 faca
                leia(n1[i,j])
           fimpara
      fimpara
      
      //ler a matriz n2
      para i de 1 ate 4 faca
           para j de 1 ate 6 faca
                leia(n2[i,j])
           fimpara
      fimpara
      
      limpatela

      //matriz m1 = n1 + n2
      para i de 1 ate 4 faca
           para j de 1 ate 6 faca
                m1[i,j] <- n1[i,j] + n2[i,j]
           fimpara
      fimpara
      
      //matriz m2 = n1 - n2
      para i de 1 ate 4 faca
           para j de 1 ate 6 faca
                m2[i,j] <- n1[i,j] - n2[i,j]
           fimpara
      fimpara
      
      
      //escreve as matrizes
      escreval("Matriz N1: ")
      escreval()
      
      para i de 1 ate 4 faca
           escreva("|")
           para j de 1 ate 6 faca
                escreva(n1[i,j]:4)
           fimpara
           escreval("   |")
      fimpara
      escreval()
      
      escrevaL("Matriz N2: ")
      escreval()
      
      para i de 1 ate 4 faca
           escreva("|")
           para j de 1 ate 6 faca
                escreva(n2[i,j]:4)
           fimpara
           escreval("   |")
      fimpara
      escreval()
      
      escreval("Matriz M1 = N1 + N2 ")
      escreval()
      para i de 1 ate 4 faca
           escreva("|")
           para j de 1 ate 6 faca
                escreva(m1[i,j]:4)
           fimpara
           escreval("   |")
      fimpara
      escreval()
      
      escreval("Matriz M2 = N1 - N2 ")
      escreval()
      
      para i de 1 ate 4 faca
           escreva("|")
           para j de 1 ate 6 faca
                escreva(m2[i,j]:4)
           fimpara
           escreval("   |")
      fimpara
fimalgoritmo