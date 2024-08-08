algoritmo "ordenar-valor"
var
   A: vetor[1..15] de inteiro
   c: inteiro
   
procedimento ordemInvertida()
var p, aux: inteiro
inicio
      para p de 1 ate 7 faca
           aux <- A[p]
           A[p] <- A[(15 - p) + 1]
           A[(15 - p) + 1] <- aux
      fimpara
fimprocedimento
   
procedimento ordemCrescente()
var p, s, aux: inteiro
inicio
      para p de 1 ate 14 faca
           para s de (p + 1) ate 15 faca
                se (A[p] > A[s]) entao
                   aux <- A[p]
                   A[p] <- A[s]
                   A[s] <- aux
                fimse
           fimpara
      fimpara
fimprocedimento

procedimento ordemDecrescente()
var p, s, aux: inteiro
inicio
      para p de 1 ate 14 faca
           para s de (p + 1) ate 15 faca
                se (A[p] < A[s]) entao
                   aux <- A[p]
                   A[p] <- A[s]
                   A[s] <- aux
                fimse
           fimpara
      fimpara
fimprocedimento

inicio
      para c de 1 ate 15 faca
           leia(A[c])
      fimpara
      
      limpatela

      escreval("ORDEM ORIGINAL: ")
      escreval("----------------")
      
      para c de 1 ate 15 faca
           escreva(A[c])
      fimpara
      escreval()
      escreval()
      
      escreval("ORDEM INVERTIDA: ")
      escreval("-----------------")
      
      ordemInvertida()
      
      para c de 1 ate 15 faca
           escreva(A[c])
      fimpara
      escreval()
      escreval()
      
      escreval("ORDEM CRESCENTE: ")
      escreval("-----------------")
      
      ordemCrescente()
      
      para c de 1 ate 15 faca
           escreva(A[c])
      fimpara
      escreval()
      escreval()
      
      escreval("ORDEM DECRESCENTE: ")
      escreval("-------------------")
      
      ordemDecrescente()
      
      para c de 1 ate 15 faca
           escreva(A[c])
      fimpara
      escreval()
      escreval()
fimalgoritmo