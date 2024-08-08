algoritmo "numeros-negativos"
// Função : dado uma sequencia de números, ele  identificará quantos deles são negativos quais são;
// Autor :  Carlos Henrique Souza da Silva
// Data : 01/07/2024
//----------------------------------------- // ----------------------------------------------------
var
   numero, num_neg: vetor[1..6] de real
   i, conta_neg: inteiro
   todos_pos: logico
   
funcao todosPositivos():logico
var
   i: inteiro
   positivo: logico
inicio
      positivo <- verdadeiro
      para i de 1 ate 6 faca
           se (num_neg[i] <> 0) entao
                positivo <- falso
           fimse
      fimpara
      retorne positivo
fimfuncao

inicio
      conta_neg <- 0
      para i de 1 ate 6 faca
           leia (numero[i])
           se (numero[i] < 0) entao
              conta_neg <- conta_neg + 1
              num_neg[i] <- numero[i]
           fimse
      fimpara
      escreval("Total de negativos: ", conta_neg)
      escreva("Sendo eles: ")
      
      todos_pos <- todosPositivos()
      
      se (todos_pos = verdadeiro) entao
         escreval("Não houve números negativos. ")
      senao
           para i de 1 ate 6 faca
                se (num_neg[i] < 0) entao
                   escreva(num_neg[i])
                fimse
           fimpara
      fimse
fimalgoritmo
