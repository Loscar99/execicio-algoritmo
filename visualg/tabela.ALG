algoritmo "semnome"
var
   c, np: inteiro
   
funcao fatorial(n: inteiro): inteiro
var i, fat:inteiro
inicio
      fat <- 1
      para i de 1 ate n faca
           fat <- fat * i
      fimpara
      retorne fat
fimfuncao

funcao divisores(n: inteiro): inteiro
var i, d: inteiro
inicio
      para i de 1 ate n faca
           se (n % i = 0) entao
              d <- d + 1
           fimse
      fimpara
      retorne d
fimfuncao

funcao primo(n: inteiro): inteiro
var
   i, d: inteiro
   num_primo: inteiro
   
inicio
       para i de 1 ate n faca
            se (n % i = 0) entao
               d <- d + 1
            fimse
       fimpara
       se (d = 2) entao
          num_primo <- 1
       senao
            num_primo <- 0
       fimse
       
       retorne num_primo
fimfuncao

inicio
      escreval("Número":8, "Quadrado":10, "Cubo":6, "Fatorial":10, "Divisores":11, "Primo")
      para c de 1 ate 10 faca
           escreva(c)
           escreva((c^2):10)
           se (c = 10) entao
              escreva("":4)
           senao
                escreva("":5)
           fimse
           escreva((c^3))
           
           se (c <=2 ) entao
              escreva("":5)
           senao
                se (c <= 4) entao
                   escreva("":4)
                senao
                     se (c <= 9) entao
                        escreva("":3)
                     senao
                          se (c = 10) entao
                             escreva("":2)
                          fimse
                     fimse
                fimse
           fimse
           
           escreva(fatorial(c))
           
            se (c <=3 ) entao
              escreva("":11)
           senao
                se (c = 4) entao
                   escreva("":10)
                senao
                     se (c <= 6) entao
                        escreva("":9)
                     senao
                          se (c = 7) entao
                             escreva("":8)
                          senao
                               se (c = 8) entao
                                  escreva("":7)
                               senao
                                    se (c = 9) entao
                                       escreva("":6)
                                    senao
                                         se (c = 10) entao
                                            escreva("":5)
                                         fimse
                                    fimse
                               fimse
                          fimse
                     fimse
                fimse
           fimse
           
           escreva(divisores(c))
           
           escreva("":7)
           
           np <- primo(c)

           se (np = 1) entao
              escreva("Sim")
           senao
                escreva("Não")
           fimse
           escreval()
      fimpara
fimalgoritmo