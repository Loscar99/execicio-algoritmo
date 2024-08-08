algoritmo "listagem-aluno"
var
   nome: vetor[1..3] de caracter
   n1: vetor[1..3] de real
   n2: vetor[1..3] de real
   med: vetor[1..3] de real
   sta: vetor[1..3] de caracter
   i, tot: inteiro
   sm, mt: real
inicio
      para i <- 1 ate 3 faca
           Escreval (i, "º ALUNO: ")
           Escreva ("Nome: ")
           Leia (nome[i])
           Escreva ("Primeira Nota: ")
           Leia (n1[i])
           Escreva ("Segunda Nota: ")
           Leia (n2[i])
           med[i] <- (n1[i] + n2[i])/2
           sm <- sm + med[i]
           Se (med[i] < 7) entao
              sta[i] <- "REPROVADO"
           senao
                sta[i] <- "APROVADO"
           FimSe
      fimpara
      mt <- sm/4
      LimpaTela
      Escreval ("        Listagem de Alunos        ")
      Escreval ("-----------------------------------")
      Escreval ("  ALUNO":15, "MÉDIA":12, "STATUS"  )
      Escreval ("-----------------------------------")
      Para i <- 1 ate 3 faca
           EscrevaL (nome[i]:16, med[i]:3:1, "":7, sta[i])
           se (med[i] > mt) entao
              Tot <- tot + 1
           fimse
      FimPara
      Escreval ("-----------------------------------")
      Escreval ("A media da turma é ", mt:3:1)
      Escreval ("O tatal de aluno acima da média são : ", tot)
      Escreval ("Sendo eles: ")
      para i <- 1 ate 3 faca
           se (med[i] > mt) entao
              Escreval (nome[i])
           fimse
      fimpara
fimalgoritmo
