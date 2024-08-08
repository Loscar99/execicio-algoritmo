Algoritmo "Troco"
Var
   valor_tot, valor_pag, troco: real
   revisao_troco: logico
   //disponibilidade de notas/moedas
   nota100, nota50, nota20, nota10, nota5, nota2: caracter
   moeda1, moeda50, moeda25, moeda10, moeda5: caracter

procedimento top()
inicio
      escreval("--------------------------")
      escreval("   SISTEMA DE PAGAMENTO   ")
      escreval("--------------------------")
fimprocedimento

procedimento disponibilidadeNotas()
inicio
      escreval(" DISPONIBILIDADE DE NOTAS ")
      escreval("--------------------------")
      escreval("Responda com S ou N para as notas/moedas disponiveis")
      escreva("Nota de 100 reais: ")
      leia(nota100)
      escreva("Nota de 50 reais: ")
      leia(nota50)
      escreva("Nota de 20 reais: ")
      leia(nota20)
      escreva("Nota de 10 reais: ")
      leia(nota10)
      escreva("Nota de 5 reais: ")
      leia(nota5)
      escreva("Nota de 2 reais: ")
      leia(nota2)
      escreva("Moeda de 1 real: ")
      leia(moeda1)
      escreva("Moeda de 50 centavos: ")
      leia(moeda50)
      escreva("Moeda de 25 centavos: ")
      leia(moeda25)
      escreva("Moeda de 10 centavos: ")
      leia(moeda10)
      escreva("Moeda de 5 centavos: ")
      leia(moeda5)
      
      limpatela
      top()
      
      
fimprocedimento

procedimento iniciarValores()
inicio
      escreval("CADASTRE VALORES: ")
      escreva("Valor total da conta: ")
      leia(valor_tot)
      escreva("Valor pago pelo cliente: ")
      leia(valor_pag)

      troco <- valor_pag - valor_tot

      limpatela
      top()
fimprocedimento

procedimento trocoNotas(valor: real) //Essa procedimento tem como objetivo reotornar
var                                  //as notas em dinheiro para o troco
   valor_notas: real
   quant: inteiro
inicio
      // troco com nota de 100 reais(cem)
      se (nota100 = "s") entao //disponibilidade da nota
         se (valor >= 100) e (valor % 100 = 0) entao
            escreval("":6, valor/100, " x 100")
            valor_notas <- 100 * (valor/100)
            valor <- valor - 100 * (valor/100)
         senao
              se (valor > 100) entao
                 quant <- 0
                 enquanto (valor >= 100) faca
                          valor_notas <- valor_notas + 100
                          quant <- quant + 1
                          valor <- valor - 100
                 fimenquanto
                 escreval("":6, quant, " x 100")
              fimse
         fimse
      fimse
      
      //troco com nota de 50 reais(cinquenta)
      se (nota50 = "s") entao
         se (valor >= 50) e (valor % 50 = 0) entao
            escreval("":6, valor/50, " x 50")
            valor_notas <- valor_notas + 50 * (valor/50)
            valor <- valor - 50 * (valor/50)
         senao
              se (valor > 50) entao
                 quant <- 0
                 enquanto (valor >= 50) faca
                          valor_notas <- valor_notas + 50
                          quant <- quant + 1
                          valor <- valor - 50
                 fimenquanto
                 escreval("":6, quant, " x 50")
              fimse
         fimse
      fimse
      
      //troco com nota de 20 reais(vinte)
      se (nota20 = "s") entao
         se (valor >= 20) e (valor % 20 = 0) entao
            escreval("":6, valor/20, " x 20")
            valor_notas <- valor_notas + 20 * (valor/20)
            valor <- valor - 20 * (valor/20)
         senao
              se (valor > 20) entao
                 quant <- 0
                 enquanto (valor >= 20) faca
                          valor_notas <- valor_notas + 20
                          quant <- quant + 1
                          valor <- valor - 20
                 fimenquanto
                 escreval("":6, quant, " x 20")
              fimse
         fimse
      fimse
      
      //troco com nota de 10 reais (dez)
      se (nota10 = "s") entao
         se (valor >= 10) e (valor % 10 = 0) entao
            escreval("":6, valor/10, " x 10")
            valor_notas <- valor_notas + 10 * (valor/10)
            valor <- valor - 10 * (valor/10)
         senao
              se (valor > 10) entao
                 quant <- 0
                 enquanto (valor >= 10) faca
                          valor_notas <- valor_notas + 10
                          quant <- quant + 1
                          valor <- valor - 10
                 fimenquanto
                 escreval("":6, quant, " x 10")
              fimse
         fimse
      fimse
      
      //troco com nota de 5 reais (cinco)
      se (nota5 = "s") entao
         se (valor >= 5) e (valor % 5 = 0) entao
            escreval("":6, valor/5, " x 5")
            valor_notas <- valor_notas + 5 * (valor/5)
            valor <- valor - 5 * (valor/5)
         senao
              se (valor > 5) entao
                 quant <- 0
                 enquanto (valor >= 5) faca
                          valor_notas <- valor_notas + 5
                          quant <- quant + 1
                          valor <- valor - 5
                 fimenquanto
                 escreval("":6, quant, " x 5")
              fimse
         fimse
      fimse
      
      //troco com nota de 2 reais (dois)
      se (nota2 = "s") entao
         se (valor >= 2) entao
            quant <- 0
            enquanto (valor >= 2) faca
                    valor_notas <- valor_notas + 2
                    quant <- quant + 1
                    valor <- valor - 2
            fimenquanto
            escreval("":6, quant, " x 2")
         fimse
      fimse

      
      // troco com moeda de 1 real
      se (moeda1 = "s") entao
         se (valor >= 1) entao
            quant <- 0
            enquanto (valor >= 1) faca
                     valor_notas <- valor_notas + 1
                     quant <- quant + 1
                     valor <- valor - 1
            fimenquanto
            escreval("":6, quant, " x 1")
         fimse
      fimse
      
      // troco com moeda de 50 centavo
      se (moeda50 = "s") entao
         se (valor >= 0.5) entao
            quant <- 0
            enquanto (valor >= 0.5) faca
                     valor_notas <- valor_notas + 0.5
                     quant <- quant + 1
                     valor <- valor - 0.5
            fimenquanto
            escreval("":6, quant, " x 0.5")
         fimse
      fimse
      
      // troco com moeda de 25 centavos
      se (moeda25 = "s") entao
         se (valor >= 0.25) entao
            quant <- 0
            enquanto (valor >= 0.25) faca
                     valor_notas <- valor_notas + 0.25
                     quant <- quant + 1
                     valor <- valor - 0.25
            fimenquanto
            escreval("":6, quant, " x 0.25")
         fimse
      fimse
      
      // troco com moeda de 10 centavos
      se (moeda10 = "s") entao
         se (valor >= 0.1) entao
            quant <-  0
            enquanto (valor >= 0.1) faca
                     valor_notas <- valor_notas + 0.1
                     quant <- quant + 1
                     valor <- valor - 0.1
            fimenquanto
            escreval("":6, quant, " x 0.10")
         fimse
      fimse
      
      // troco com moeda de 5 centavos
      se (moeda5 = "s") entao
         se (valor >= 0.05) entao
            quant <- 0
            enquanto (valor >= 0.05) faca
                     valor_notas <- valor_notas + 0.05
                     quant <- quant + 1
                     valor <- valor - 0.05
            fimenquanto
            escreval("":6, quant, " x 0.05")
         fimse
      fimse
      
      //revisão do troco
      se (valor_notas = troco) e (valor = 0) entao
         revisao_troco <- verdadeiro
      senao
           revisao_troco <- falso
      fimse
fimprocedimento
Inicio
      top()
      disponibilidadeNotas()
      iniciarValores()
      escreval("Valor Total":20, valor_tot:4:2)
      escreval("Valor pago":20, valor_pag:4:2)
      escreval()
      escreval("Troco":20, troco:4:2)
      
      //notas do troco
      se (troco < 0) entao
         escreval("-- Ainda falta ser pago R$", abs(troco):4:2, " --")
      senao
           escreval("--------------------------")
           escreval()
           escreval("Notas:(QTD x Nota/moeda) ")
           trocoNotas(troco))
      fimse
      
      //confirmação do troco correto
      se (revisao_troco = verdadeiro) entao
         escreval()
         escreval("--Troco conferido--")
      senao
           escreval()
           escreval("--Faltou Troco--")
      fimse
Fimalgoritmo