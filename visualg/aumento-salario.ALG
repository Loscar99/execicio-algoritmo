algoritmo "Reajuste de Salário"
var
   nome: vetor[1..10] de caracter
   salario: vetor[1..10] de real
   novo_salario: vetor[1..10] de real
   quant_fun: inteiro
   ajuste: caracter

procedimento top()
inicio
      escreval("------------------------")
      escreval("  REAJUSTE DE SALÁRIOS  ")
      escreval("------------------------")
fimprocedimento

procedimento cadastroFun(max: inteiro)
var c: inteiro
inicio
      para c de 1 ate max faca
           limpatela
           top()
           
           escreval(" Cadastro de Funcionário: ")
           escreval()
           escreval(c, "º Funcionário: ")
           escreva("Nome: ")
           leia(nome[c])
           escreva("Salário Atual: ")
           leia(salario[c])
      fimpara
fimprocedimento

funcao bancoDados(valor: real): real
inicio
      se (valor > 0) e (valor <= 400) entao
         retorne 1.15
         ajuste <- "15%"
      senao
           se (valor <= 700) entao
              retorne 1.12
              ajuste <- "12%"
           senao
                se (valor <= 1000) entao
                   retorne 1.1
                   ajuste <- "10%"
                senao
                     se (valor <= 1800) entao
                        retorne 1.07
                        ajuste <- "7%"
                     senao
                          se (valor <= 2500) entao
                             retorne 1.04
                             ajuste <- "4%"
                          senao
                               se (valor > 2500) entao
                                  retorne 1
                                  ajuste <- "Sem Aumento"
                               fimse
                          fimse
                     fimse
                fimse
           fimse
      fimse
fimfuncao

procedimento reajusteSalario(max: inteiro)
var
   c: inteiro
   espaco: inteiro
inicio
      LimpaTela
      top()

      escreval("Aumento de Salário: ")
      escreval()
      escreval("Nome":20, "Salario(R$)":15, "Aumento(%)":15, "Novo Salário")
      escreval("--------------------------------------------------------------")
      
      para c de 1 ate max faca
           //definição do salario reajustado
           novo_salario[c] <- (salario[c]) * (bancoDados(salario[c]))
           //definição do espaço entre salario e o ajuste, afim de ficar alinhado
           se (salario[c] < 10) entao
              espaco <- 13
           senao
                se (salario[c] < 100) entao
                   espaco <- 13
                senao
                     se (salario[c] < 1000) entao
                        espaco <- 12
                     senao
                          se (salario[c] < 10000) entao
                             espaco <- 11
                          senao
                               espaco <- 10
                          fimse
                     fimse
                fimse
           fimse
           
           escreval(nome[c]:20, salario[c]:5:2, "":espaco, ajuste:15, novo_salario[c]:5:2)
      fimpara
fimprocedimento

inicio
      top()
      escreval("Digite a quantidade de funcionários (max = 10):")
      leia(quant_fun)
      
      cadastroFun(quant_fun)
      
      reajusteSalario(quant_fun)
fimalgoritmo