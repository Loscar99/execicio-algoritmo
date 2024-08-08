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
      escreva ("Escolha um número: ")
      leia (num)
      calculoPrimo()
      escreval ("Temos ", ndiv, " divisores para o número ", num)
      escolha ndiv
              caso 2
                   escreval ("Logo, ele é  um número primo")
              outrocaso
                       escreval ("Logo, ele não é um número primo")
      fimescolha
fimalgoritmo
