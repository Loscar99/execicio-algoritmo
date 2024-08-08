algoritmo "media-par-matriz"
var
   m: vetor[1..5, 1..6] de inteiro
   l, c, cont, soma: inteiro
   media: real

   
procedimento mediaParMatriz()
var
   i, j: inteiro

inicio
      cont <- 0
      soma <- 0
      para i de 1 ate 5 faca
           para j de 1 ate 6 faca
                se (m[i,j] % 2 = 0) entao
                   soma <- soma + m[i,j]
                   cont <- cont + 1
                fimse
           fimpara
      fimpara

      media <- soma/cont

fimprocedimento

inicio
      para l de 1 ate 5 faca
           para c de 1 ate 6 faca
                leia(m[l,c])
           fimpara
      fimpara
      
      limpatela
      
      mediaParMatriz()
      
      escreval("MATRIZ 5X6")
      escreval("-----------------------------")
      
      para l de 1 ate 5 faca
           escreva("|")
           para c de 1 ate 6 faca
                escreva(m[l,c]:4)
           fimpara
           escreval("   |")
      fimpara
      
      escreval("-----------------------------")
      escreval()
      
      escreval("Soma dos números pares: ", soma)
      escreval("Media dos números pares: ",media:4:2)
fimalgoritmo