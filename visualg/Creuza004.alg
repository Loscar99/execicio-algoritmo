algoritmo "Creuza04"
var
   preco, imposto, reais: real
inicio
      escreva ("Qual o valor total dos produtos (em dólares)? ")
      leia (preco)
      imposto <- (preco * 60) / 100
      escreval ("você deverá pagar US$", imposto:1:2, " de imposto.")
      reais <- imposto * 5.35
      escreval ("Isso equivalerá à R$", reais:1:2, ". ")

fimalgoritmo
