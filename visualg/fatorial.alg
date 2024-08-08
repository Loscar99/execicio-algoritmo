algoritmo "fatoria"
var
   num, fat: inteiro
procedimento top()
inicio
      escreval ("-------------------")
      escreval ("  F A T O R I A L  ")
      escreval ("-------------------")
fimprocedimento
funcao fatorial(x: Inteiro):inteiro
var
res, cont: inteiro
inicio
      res <- 1
      para cont <- x ate 1 passo -1 faca
           escreva (cont, " x ")
           res <- res * cont
      fimpara
      escreval ("")
      retorne res
fimfuncao
inicio
      top()
      escreval ("Digite um número: ")
      leia (num)
      fat <- fatorial(num)
      escreval ("O fatorial do número ", num, "! é ", fat)
fimalgoritmo
