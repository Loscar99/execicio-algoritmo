algoritmo "semnome"
var
   alunos: vetor[1..4] de caracter
   notas: vetor[1..4, 1..4] de real
   media: vetor[1..4] de real
   i: inteiro
   
procedimento notaAluno()
var
   c, l: inteiro
inicio
      para c de 1 ate 4 faca
           escreva("Aluno ", c, ": ")
           leia(alunos[c])
      fimpara
      
      LimpaTela
      
      para c de 1 ate 4 faca
           para l de 1 ate 4 faca
                escreva(alunos[c], ", nota ", l, ": ")
                leia(notas[c, l])
           fimpara
           LimpaTela
      fimpara
fimprocedimento

funcao mediaAluno(c: inteiro): real
var
   l: inteiro
   m: vetor[1..4] de real
inicio
      para l de 1 ate 4 faca
           m[c] <- notas[c,l] + m[c]
      fimpara
      
      m[c] <- m[c]/4
      retorne m[c]
fimfuncao

inicio
        notaAluno()
        
        para i de 1 ate 4 faca
             media[i] <- mediaAluno(i)
        fimpara
        
        escreval("-------------------------")
        escreval("    MÉDIAS DOS ALUNOS    ")
        escreval("-------------------------")
        escreval()
        escreval(" Aluno":15, "Média")
        escreval("-------------------------")
        
        para i de 1 ate 4 faca
             escreva(alunos[i]:15, media[i]:3:1)
             se (media[i] >= 7) entao
                escreval(" - APROVADO")
             senao
                  escreval(" - REPROVADO")
             fimse
        fimpara
fimalgoritmo
