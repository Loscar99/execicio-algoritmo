algoritmo "SuperContador"
var
   num, cont: inteiro
inicio
      repita
            escreval ("=================")
            escreval ("|     MENU      |")
            escreval ("-----------------")
            escreval ("| [1] De 1 a 10 |")
            escreval ("| [2] De 10 a 1 |")
            escreval ("| [3] Sair      |")
            escreval ("=================")
            leia (num)
            escolha num
                    caso 1
                         cont <- 1
                         enquanto ( cont <= 10) faca
                                  escreva (cont, "..")
                                  cont <- cont + 1
                         fimenquanto
                         escreval ("")
                         
                    caso 2
                         cont <- 10
                         repita
                               escreva (cont, "..")
                               cont <- cont -1
                         ate (cont < 1)
                         escreval ("")
            fimescolha
      ate (num = 3)
      escreval ("Saindo ... ")
      
      
fimalgoritmo