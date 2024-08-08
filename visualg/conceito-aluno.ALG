algoritmo "semnome"
var
   conceito: caracter
   nota: vetor[1..10] de inteiro
   aluno: vetor[1..10] de caracter
   quant, i: inteiro

   
procedimento top()
inicio
      escreval("--------------------")
      escreval("   CONCEITO ALUNO   ")
      escreval("--------------------")
fimprocedimento

procedimento cadastroAluno()
var c: inteiro
inicio
      para c de 1 ate quant faca
           escreva("Aluno ", c, ": ")
           leia(aluno[c])
           escreva("Nota: ")
           leia(nota[c])

           limpatela
           top()
      fimpara
fimprocedimento

funcao conceitoNota(nota:inteiro): caracter
inicio
      escolha nota
              caso 1, 2
                   retorne "E"
              caso 3, 4, 5
                   retorne "D"
              caso 6, 7
                   retorne "C"
              caso 8, 9
                   retorne "B"
              caso 10
                   retorne "A"
      fimescolha
fimfuncao

inicio
      top()
      escreva("Quantidade de aluno: ")
      leia(quant)
      
      limpatela
      top()
      
      cadastroAluno()
      
      escreval()
      escreval("Nome":15, "Nota":10, "Conceito")
      escreval("----------------------------------")
      para i de 1 ate quant faca
           escreva(aluno[i]:15, nota[i]:3:1)
           
           se (nota[i] = 10) entao // usei essa tecnica para deixar alinhado os conceitos
              escreval("":10, conceitoNota(nota[i]))
           senao
                escreval("":11, conceitoNota(nota[i]))
           fimse
      fimpara

fimalgoritmo