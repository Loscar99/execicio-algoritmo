algoritmo "contagem-inteligente"
var
   ni, nf, cont: inteiro
   resp: caracter
procedimento contador (I, F: inteiro)
inicio
      se (ni > nf) entao
         cont <- ni
         enquanto (cont >= nf) faca
                  escreva (cont)
                  cont <- cont - 1
         fimenquanto
      senao
           cont <- ni
           enquanto (cont <= nf) faca
                    escreva (cont)
                    cont <- cont + 1
           fimenquanto
      fimse
fimprocedimento
inicio
      repita
         LimpaTela
         escreval ("   CONTAGEM INTELIGENTE   ")
         escreval ("--------------------------")
         escreva ("Inicio: ")
         leia (ni)
         escreva ("Fim: ")
         leia (nf)
         contador (ni, nf)
         escreval ("")
         escreva ("Deseja repetir? [s/n] ")
         leia (resp)
      ate(resp = "n")
      escreval ("---------------------------")
      escreval (" OPERAÇÃO CANCELADA ")

fimalgoritmo
