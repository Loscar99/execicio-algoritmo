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
            escreval ("Quantos aportes voc� ir� fazer? ")
            escreval ("Digite [1] para �nico aporte ")
            escreval ("Digite [2] para multiplos aportes ")
            leia (resp)
            escolha resp
                    caso 2
                         repita
                               erroInv <- 0
                              escreval ("Quantos aportes mensais voc� ir� fazer? ")
                              leia (apor)
                              escreval ("Qual o valor? ")
                              leia (valor)
                              valor <- valor * apor
                              escreval ("Por quanto anos voc� ir� deixar seu dinheiro investido? ")
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
                       escreval ("Quanto anos voc� ir� deixar seu dinheiro investido ")
                       leia (tempoInv)
                    outrocaso
                             escreval ("Op��o n�o encontrada.")
                             escreval ("Por favor, verifique sua resposta e tente novamente.")
            fimescolha
      ate (resp = 1) ou (resp = 2)
      escreval ("--------------------------------------")
      escreval ("Vamos considerar a juros de 10% ao ano")
      calculoInvestimento(valor)
      escreval ("--------------------------------------")
      escreval ("No final de ", tempoInv, " anos, seu patrim�nio investido ser� de: ")
      escreval ("R$", valor:9:2)
      
fimalgoritmo
