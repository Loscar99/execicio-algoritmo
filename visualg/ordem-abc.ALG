Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/07/2024
Var
   i, resp: inteiro
   a, b, c: real

procedimento ordenaValores(o: inteiro; var x, y, z: real)
var aux: real
inicio
      escolha o
              //ordem crescente
              caso 1
                   se (x > y) entao
                      aux <- x
                      x <- y
                      y <- aux
                   fimse
                   se (x > z) entao
                      aux <- x
                      x <- z
                      z <- aux
                   fimse
                   se (y > z) entao
                      aux <- y
                      y <- z
                      z <- aux
                   fimse
              caso 2
                   se (x < y) entao
                      aux <- x
                      x <- y
                      y <- aux
                   fimse
                   se (x < z) entao
                      aux <- x
                      x <- z
                      z <- aux
                   fimse
                   se (y < z) entao
                      aux <- y
                      y <- z
                      z <- aux
                   fimse
              caso 3
                   se (y < x) entao
                      aux <- y
                      y <- x
                      x <- aux
                   fimse
                   se (y < z) entao
                      aux <- y
                      y <- z
                      z <- aux
                   fimse
      fimescolha

fimprocedimento

Inicio
      escreval("Digite valores para os indicadores I, A, B, e C")
      escreval("Onde I deve ser um n�mero INTEIRO e POSITIVO")
      repita
            escreva("I: ")
            leia(i)

            se (i < 0) entao
               resp <- 0
            senao
                 resp <- 1
            fimse
            se (resp = 0) entao
               escreval("Resposta invalida")
               escreval("Verifique as regras e tente novamente")
            fimse
      ate (resp = 1)
      escreva("A: ")
      leia(a)
      escreva("B: ")
      leia(b)
      escreva("C: ")
      leia(c)
      
      ordenaValores(i, a, b, c)
      
      limpatela

      escreval("Voc� digitou ", i, " para I, ent�o: ")
      se (i = 1) entao
         escreval("Os tr�s valores A, B e C ficar�o em ordem crescente: ")
      senao
           se (i = 2) entao
              escreval("Os tr�s valores A, B e C ficar�o em ordem decrescente: ")
           senao
                 se (i = 3) entao
                    escreval("os tr�s valores A, B, e C ficar�o de uma forma que o ")
                    escreval("maior valor fique entre os outros dois: ")
                 senao
                      escreval("O I foi diferente de 1, 2, 3, ent�o n�o haver� mundan�as")
                 fimse
           fimse
      fimse
      
      escreval()
      escreval("I: ", i)
      escreval(" a b c:")
      escreval(a, b, c)


Fimalgoritmo