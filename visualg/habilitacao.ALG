algoritmo "habilitação"
var
   ano_atual, ano_nasc, idade: inteiro
   resp: caracter
procedimento top()
inicio
      escreval ("--------------------------------")
      escreval ("    DEPARTAMENTO DE TRÂNSITO    ")
      escreval ("--------------------------------")
fimprocedimento
procedimento encerramento()
inicio
      escreval ("==================================")
      escreval ("        OPERAÇÃO CANCELADA        ")
      escreval ("==================================")
fimprocedimento
inicio
      repita
         limpatela
         top()
         escreva ("Ano atual (yyyy): ")
         leia (ano_atual)
         escreva ("Ano de nascimento (yyyy): ")
         leia (ano_nasc)
         escreval (" ")

         idade <- ano_atual - ano_nasc

         escreval ("------------ STATUS ------------")
         escreval ("IDADE: ", idade, " ANOS ")

         se (idade >= 18) entao
            escreval ("APTO A TIRAR CARTERIA")
         senao
              escreval ("INAPTO A TIRAR CARTEIRA")
         fimse

         escreval ("---------------------------------")
         escreval ("Deseja repetir: [s/n]? ")
         leia (resp)
      ate (resp = "n")
      limpatela
      encerramento()
fimalgoritmo
