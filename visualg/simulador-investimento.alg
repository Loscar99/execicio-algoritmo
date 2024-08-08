algoritmo "simuladorInvestimento"
var
   resp, apor, tempoInv, erroInv: inteiro
   valor: real
procedimento top()
inicio
      escreval ("-----------------------------")
      escreval ("  SIMULADOR DE INVESTIMENTO  ")
      escreval ("-----------------------------")
fimprocedimento
procedimento calculoInvestimento(var money: real)
var
   cont: inteiro
inicio
      para cont <- 1 ate tempoInv faca
           money <- money * 1.1
      fimpara
fimprocedimento
inicio
      top()
      repita
            escreval ("Quantos aportes você irá fazer? ")
            escreval ("Digite [1] para único aporte ")
            escreval ("Digite [2] para multiplos aportes ")
            leia (resp)
            escolha resp
                    caso 2
                         repita
                               erroInv <- 0
                              escreval ("Quantos aportes mensais você irá fazer? ")
                              leia (apor)
                              escreval ("Qual o valor? ")
                              leia (valor)
                              valor <- valor * apor
                              escreval ("Por quanto anos você irá deixar seu dinheiro investido? ")
                              leia (tempoInv)
                              se (tempoInv*12 < apor) entao
                                 escreval ("Seus aportes mensai utrapassou o limite de aportes por ano (12 aportes/anuais)")
                                 escreval ("Por favor, corrija a quantidade de aportes ou a quantidade de anos investidos")
                                 erroInv <- 1
                              fimse
                         ate (erroInv <> 1)
                    caso 1
                       apor <- 1
                       escreval ("Qual o valor? ")
                       leia (valor)
                       escreval ("Quanto anos você irá deixar seu dinheiro investido ")
                       leia (tempoInv)
                    outrocaso
                             escreval ("Opção não encontrada.")
                             escreval ("Por favor, verifique sua resposta e tente novamente.")
            fimescolha
      ate (resp = 1) ou (resp = 2)
      escreval ("--------------------------------------")
      escreval ("Vamos considerar a juros de 10% ao ano")
      calculoInvestimento(valor)
      escreval ("--------------------------------------")
      escreval ("No final de ", tempoInv, " anos, seu patrimônio investido será de: ")
      escreval ("R$", valor:9:2)
      
fimalgoritmo
