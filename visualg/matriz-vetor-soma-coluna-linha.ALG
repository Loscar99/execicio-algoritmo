algoritmo "semnome"
var
   m: vetor[1..5, 1..5] de inteiro
   sl, sc: vetor[1..5] de inteiro
   i, j: inteiro

procedimento somaColuna()
var c: inteiro
inicio
      para c de 1 ate 5 faca
           para i de 1 ate 5 faca
                sc[c] <- sc[c] + m[i,c]
           fimpara
      fimpara
fimprocedimento

procedimento somaLinha()
var c: inteiro
inicio
      para c de 1 ate 5 faca
           para j de 1 ate 5 faca
                sl[c] <- sl[c] + m[c,j]
           fimpara
      fimpara
fimprocedimento

inicio
      para i de 1 ate 5 faca
           para j de 1 ate 5 faca
                leia(m[i,j])
           fimpara
      fimpara
      
      limpatela
      
      somaColuna()
      
      somaLinha()
      
      //escreve a matriz
      escreval(" M A T R I Z   5 X 5: ")
      escreval()
      para i de 1 ate 5 faca
           escreva("|")
           para j de 1 ate 5 faca
                se (j = 1) entao
                   escreva(m[i,j]:3)
                senao
                     escreva(m[i,j]:5)
                fimse
           fimpara
           escreval("  |")
      fimpara
      escreval()
      
      //escreve os vetores
      
      escreval("Soma das Colunas: ")
      para j de 1 ate 5 faca
           escreval("Coluna", j, ": ", sc[j])
      fimpara
      escreval()
      
      escreval("Soma das Linhas: ")
      para i de 1 ate 5 faca
           escreval("Linha", i, ": ", sl[i])
      fimpara
fimalgoritmo