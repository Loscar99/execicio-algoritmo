algoritmo "prova-vetor"
var
   provaG: vetor[1..10] de caracter  //prova Gabarito
   provaA: vetor[1..10] de caracter  //prova Aluno
   notaA: vetor[1..30] de real // nota do aluno
   cAlunos: vetor[1..30] de caracter //capacidade para no m�ximo 30 alunos
   nAlunos: inteiro // Quantidade de alunos
   notaM: real //Nota m�dia da turma
   
procedimento  cadastroGabarito()
var
   i: inteiro
inicio
      EscrevaL("-----------------------------")
      EscrevaL("    CADASTRO DE GABARITO     ")
      EscrevaL("-----------------------------")
      //etrutura de repeti��o para as quest�es da prova
      Para i <- 1 ate 10 faca
          Escreva("Quest�o ", i, ": ")
          Leia (provaG[i])
      FimPara
fimprocedimento

procedimento cadastroAluno()
var
   i, q: inteiro
inicio
      Escreva ("Informe a quantidade de alunos que ser�o cadastrados: ")
      Leia (nAlunos)
      LimpaTela
      Para i <- 1 ate nAlunos faca //Estrutura de repeti��o para o nome dos alunos
           EscrevaL("-----------------------------")
           EscrevaL("Aluno ", i)
           EscrevaL("-----------------------------")
           Escreva("Nome: ")
           Leia(cAlunos[i])
           EscrevaL("RESPOSTAS DADAS: ")
           Para q <- 1 ate 10 faca //Estrutura de repetic�o para a provo do aluno
                Escreva("Quest�o ", q, ": ")
                Leia (provaA[q])
                Se (maiusc(provaA[q]) = maiusc(provaG[q])) entao //Soma dos pontos da prova
                   notaA[i] <- notaA[i] + 1
                FimSe
           FimPara
           LimpaTela
      FimPara
fimprocedimento

procedimento resultadoProva()
var
   i: inteiro
inicio
      EscrevaL(" RESULTADOS DAS PROVAS")
      EscrevaL("===========================")
      EscrevaL("ALUNO":15, "NOTA")
      EscrevaL("--------------------")
      Para i <- 1 ate nAlunos faca
           EscrevaL (cAlunos[i]:15, notaA[i]:3:1)
      FimPara
      EscrevaL("--------------------")
fimprocedimento

funcao notaMedia():real
var
   i: inteiro
   media: real
inicio
      Para i <- 1 ate nAlunos faca
           media <- media + notaA[i]
      FimPara
      media <- media / nAlunos
      retorne media
fimfuncao
inicio
      cadastroGabarito()
      LimpaTela
      cadastroAluno()
      LimpaTela
      resultadoProva()
      notaM <- notaMedia()
      EscrevaL ("Media da Turma: ", notaM:3:1)
fimalgoritmo
