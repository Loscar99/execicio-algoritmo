algoritmo "tabuada"
var
   cont, num, resu: inteiro
   rep: caracter
inicio
      repita
            escreva ("Qual tabuada você quer saber: ")
            leia (num)
            cont <- 0
            repita
                  resu <- cont * num
                  escreval (num, " x ", cont, " = ", resu)
                  cont <- cont + 1
            ate (cont > 10)
            escreva ("Deseja repetir? [s/n] ")
            leia (rep)
      ate (rep = "n")
      escreval ("--------------------------")
      escreval ("    Operação cancelada    ")
fimalgoritmo
