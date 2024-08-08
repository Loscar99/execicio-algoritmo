Algoritmo "FINANCIAMENTO"
Var
   salario, valor_fin: real
   status_fin: caracter

procedimento top()
inicio
      escreval("---------------------------")
      escreval(" F I N A N C I A M E N T O ")
      escreval("---------------------------")
fimprocedimento

funcao statusFinanciamento(s, f: real): caracter
var status: caracter
inicio
      se (f <= (s/5)) entao
         status <- "Concedido"
         retorne status
      senao
           status <- "Negado"
           retorne status
      fimse
fimfuncao

Inicio
      top()
      escreva("Informe seu salário: ")
      leia(salario)
      escreval("Informe o valor do financiamento pretendido: ")
      escreva("Valor: ")
      leia(valor_fin)
      escreval()
      escreval("---------------------------")
      escreval()
      status_fin <- statusFinanciamento(salario, valor_fin)
      escreval("Financiamento ", status_fin)
      
      se (minusc(status_fin) = "negado") entao
         escreval()
         escreval("Para você, sugerimos um ")
         escreval("financiamento de até: ")
         escreval("R$ ", salario/5)
      fimse
      
      escreval()
      escreval("---------------------------")
      escreval()
      escreval("Obrigado por nos consultar!")
Fimalgoritmo