algoritmo "Creuza05"
var
   empr, parc, empr_juros, empr_parc: real

inicio
      escreva ("Qual o valor do emprestimo que você deseja? ")
      leia (empr)
      escreva ("Você quer pagar em quantas parcelas? ")
      leia (parc)
      
      empr_juros <- empr * 1.2
      empr_parc <- empr_juros / parc
      
      escreval ("Você vai pagar ", empr_parc, " em ", parc, " parcelas.")
      escreval ("Descrição do contrato: ")
      escreval ("valor do emprestimo: ", empr)
      escreval ("Taxa de juros: 20% sobre o valor do emprestimo")
      escreval ("Quantidade de parcelas: ", parc)
      escreval ("Valor das parcelas: ", empr_parc)
      escreval ("Valor total a ser pago com juros: ", empr_juros)
      escreval ("Se você concorda, então pode prosseguir.")
fimalgoritmo
