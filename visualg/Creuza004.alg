algoritmo "Creuza04"
var
   preco, imposto, reais: real
inicio
      escreva ("Qual o valor total dos produtos (em d�lares)? ")
      leia (preco)
      imposto <- (preco * 60) / 100
      escreval ("voc� dever� pagar US$", imposto:1:2, " de imposto.")
      reais <- imposto * 5.35
      escreval ("Isso equivaler� � R$", reais:1:2, ". ")

fimalgoritmo
