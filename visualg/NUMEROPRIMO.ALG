algoritmo "NumeroPrimo"
var
   cont, num, ndiv: inteiro
procedimento calculoPrimo()
inicio
      repita
            se ( num % cont = 0 ) entao
               ndiv <- ndiv + 1
            fimse
            cont <- cont + 1
      ate (cont > num)
fimprocedimento
inicio
      cont <- 1
      escreva ("Escolha um n�mero: ")
      leia (num)
      calculoPrimo()
      escreval ("Temos ", ndiv, " divisores para o n�mero ", num)
      escolha ndiv
              caso 2
                   escreval ("Logo, ele �  um n�mero primo")
              outrocaso
                       escreval ("Logo, ele n�o � um n�mero primo")
      fimescolha
fimalgoritmo
