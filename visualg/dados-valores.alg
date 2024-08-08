algoritmo "dados de valores"
var
    num, soma, media, somapar: real
    div05, nulo, rep, cont: inteiro
    resp: caracter
procedimento calculo(A: inteiro)
inicio
      para cont <- 1 ate rep faca
           escreva ("Digite o ", cont, "º valor: ")
           leia (num)
           soma <- soma + num
           media <- soma / rep
           se (num % 5 = 0) entao
              div05 <- div05 + 1
           fimse
           se (num = 0) entao
              nulo <- nulo + 1
           fimse
           se (num % 2 = 0) entao
              somapar <- somapar + num
           fimse
      fimpara
fimprocedimento
inicio
      repita
            soma <- 0
            media <- 0
            somapar <- 0
            nulo <- 0
            div05 <- 0
            escreva ("Quantos valores você deseja inserir? ")
            leia (rep)
            escreval ("--------------------------------------")
            calculo(rep)
            escreval ("A soma entre os valores é: ", soma)
            escreval ("A média entre os valores é: ", media:4:2)
            escreval ("Quantidade de valores divisiveis por 5: ", div05)
            escreval ("Quantidades de valors nulos: ", nulo)
            escreval ("A soma dos valores pares é igual a: ", somapar)

            escreva ("Deseja repetir? [s/n] ")
            leia (resp)
            limpatela
      ate (resp = "n")
      escreval ("         OPERAÇÃO CANCELADA         ")
fimalgoritmo
