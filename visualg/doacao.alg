algoritmo "semnome"
var
   D: inteiro
   valor: real
procedimento opcao()
inicio
      Escreval ("Obrigado pela sua doação")
      escreval ("Escolha um valor: ")
      escreval (" [1] para doar R$10 ")
      escreval (" [2] para doar R$50 ")
      escreval (" [3] para doar R$100 ")
      escreval (" [4] para doar outros valores ")
      escreval (" [5] para cancelar ")
fimprocedimento
inicio
      opcao()
      leia (D)
      Escolha D
          Caso 1
               valor <- 10
          Caso 2
               valor <- 50
          Caso 3
               valor <- 100
          Caso 4
               escreva ("Escolha um valor: ")
               leia (valor)
          Caso 5
               valor <- 0
      FimEscolha
      escreval ("----------------------------")
      se (valor <> 0) entao
         escreval (" SUA DOAÇÃO FOI DE R$", valor)
         escreval (" MUITO OBRIGADO! ")
      senao
           escreval (" VOCÊ NÃO QUIS FAZER NENHUMA DUAÇÃO ")
           escreval (" SEU PÃO DURO! ")
      fimse
fimalgoritmo
