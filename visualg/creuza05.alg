algoritmo "Creuza05"
var
   empr, parc, empr_juros, empr_parc: real

inicio
      escreva ("Qual o valor do emprestimo que voc� deseja? ")
      leia (empr)
      escreva ("Voc� quer pagar em quantas parcelas? ")
      leia (parc)
      
      empr_juros <- empr * 1.2
      empr_parc <- empr_juros / parc
      
      escreval ("Voc� vai pagar ", empr_parc, " em ", parc, " parcelas.")
      escreval ("Descri��o do contrato: ")
      escreval ("valor do emprestimo: ", empr)
      escreval ("Taxa de juros: 20% sobre o valor do emprestimo")
      escreval ("Quantidade de parcelas: ", parc)
      escreval ("Valor das parcelas: ", empr_parc)
      escreval ("Valor total a ser pago com juros: ", empr_juros)
      escreval ("Se voc� concorda, ent�o pode prosseguir.")
fimalgoritmo
