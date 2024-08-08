algoritmo "semnome"
var
   salaF, percV, salario: real
   tot_vendas: inteiro
   nome: caracter

procedimento confgSalario(var sf, pv: real)
inicio
      escreval("  Configuração de Salário  ")
      escreval("---------------------------")
      escreva("Salário Fixo: R$")
      leia(sf)
      escreva("Percentual por venda (%): ")
      leia(pv)
      LimpaTela
fimprocedimento

funcao calculoSalario(tv: inteiro): real
var
   comV, sala: real
inicio
      comV <- (percV/100) * tot_vendas
      sala <- salaF + comV
      retorne sala
fimfuncao
inicio
      confgSalario(salaF, percV)
      
      escreval("  Cálculo de salário  ")
      escreval("----------------------")
      escreval()
      
      escreva("Nome: ")
      leia (nome)
      escreva("Valor total de vendas: R$")
      leia (tot_vendas)
      
      salario <- calculoSalario(tot_vendas)
      
      limpatela

      escreval("  Salário do mês:  ")
      escreval("-------------------")
      escreval("Vendedor: ", nome)
      escreval("Valor total de vendas: ", tot_vendas)
      escreval("Percentual por venda: ", percV, "%")
      escreval()
      escreval("Salário: ", salario)
fimalgoritmo
