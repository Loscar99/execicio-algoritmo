algoritmo "semnome"
var
   num: inteiro
   resp: caracter
procedimento top()
inicio
      escreval ("---------------------")
      escreval ("COMPARADOR DE NÚMEROS")
      escreval ("---------------------")
fimprocedimento
funcao ParOuImpar(v: inteiro):caracter
var
   R: caracter
inicio
      se (v%2 = 0) entao
         R <- "PAR"
      senao
           R <- "IMPAR"
      fimse
      retorne R
inicio
fimfuncao
      top()
      escreva("Digite um número: ")
      leia (num)
      resp <- ParOuImpar(num)
      escreval ("O número ", num, " é um valor ", resp)
fimalgoritmo
