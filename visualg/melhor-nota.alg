algoritmo "melhor-nota"
var
    cont, na: inteiro
    nota, max_nota: real
    aluno, max_aluno, rep: caracter
inicio
      rep <- "S"
      enquanto (rep = "S") faca
      
      escreval ("--------------------------------")
      escreval ("     Escola Santa Paciência     ")
      escreval ("--------------------------------")
      escreva ("Quantos alunos a turma tem? ")
      leia (na)
      escreval ("--------------------------------")


               cont <- 1
              enquanto (cont <= na) faca
                       escreval ("ALUNO ", cont)
                       escreva ("Nome do aluno: ")
                       leia (aluno)
                       escreva ("Qual a nota de ", aluno, ": ")
                       leia (nota)
                       escreval ("---------------------------------")
                       se (nota > max_nota) entao
                          max_nota <- nota
                          max_aluno <- aluno
                       fimse
               
                       cont <- cont + 1
               fimenquanto
               escreval ("O aluno com o melhor aproveitamento foi ", max_aluno, " com nota ", max_nota)
               escreval ("--------------------------------------")
               escreval ("Deseja repetir o teste? Sim[S] ou Não[N]")
               leia (rep)
      fimenquanto
      escreval ("Processo Encerrado")
fimalgoritmo
