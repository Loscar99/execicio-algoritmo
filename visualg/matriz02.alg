algoritmo "semnome"
// Função :
// Autor :
// Data : 01/07/2024
// Seção de Declarações 
var
   m: vetor[1..3, 1..3] de inteiro
   sl3, sc2, sdp, sds, sm: inteiro  //significa respectivamente: soma da linha 3, soma da coluno 2, soma da diagonal principal e secundária e soma da matriz
   i, j: inteiro // linha e coluna, respectivamente, da matriz
procedimento montarMatriz()
var i, j: inteiro // linha e coluna, respectivamente, da matriz
inicio
      para i de 1 ate 3 faca
           para j de 1 ate 3 faca
                leia(m[i,j])
           fimpara
      fimpara
fimprocedimento
procedimento mostrarMatriz()
var i, j: inteiro
inicio
      para i de 1 ate 3 faca
           para j de 1 ate 3 faca
                escreva(m[i,j]:4)
           fimpara
           escreval()
      fimpara
fimprocedimento

inicio
      montarMatriz()
      limpatela
      mostrarMatriz()
      
      escreval ("-------------------------")
      
      //------- soma da linha 3 --------
      
      para j de 1 ate 3 faca
           i <- 3
           sl3 <- sl3 + m[i,j]
      fimpara
      escrevaL("A soma dos valores da linha 3 é: ", sl3)
      
      //--------- soma da coluna 2 -----------
      
      para i de 1 ate 3 faca
           j <- 2
           sc2 <- sc2 + m[i,j]
      fimpara
      escreval("A soma dos valores da coluna 2 é: ", sc2)
      
      //--------- soma da diagonal principal ---------
      
      para i de 1 ate 3 faca
           para j de 1 ate 3 faca
                se (i = j) entao
                   sdp <- sdp + m[i,j]
                fimse
           fimpara
      fimpara
      escreval("A soma dos valores da diagonal pricipal é: ", sdp)
      
      //------- soma da diagonal secundária -----------
      
      para i de 1 ate 3 faca
           para j de 1 ate 3 faca
                se (j = 4 - i) entao
                   sds <- sds + m[i,j]
                fimse
           fimpara
      fimpara
      escreval("A soma dos valores da diagonal secundária é: ", sds)
      
      //------- soma de todos os elementos da matriz -----------
      
      para i de 1 ate 3 faca
           para j de 1 ate 3 faca
                sm <- sm + m[i,j]
           fimpara
      fimpara
      escreval("A soma dos valores da matriz é: ", sm)
      
fimalgoritmo
