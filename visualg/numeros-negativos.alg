algoritmo "N�meros Negativos"
var
   cont, num, tneg, nneg: inteiro
inicio
      cont <- 1
       repita
             escreva ("Digite o ", cont, "� n�mero: ")
             leia (num)
             se (num < 0) entao
                tneg <- tneg + 1
                nneg <- num
             fimse
             cont <- cont + 1
       ate (cont > 5)
       escreval ("Foram digitados um total de ", tneg, " n�meros negativos. ")
fimalgoritmo
