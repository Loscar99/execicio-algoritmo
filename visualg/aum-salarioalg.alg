algoritmo "aumento-salario"
var
   nome: caracter
   sala, nsal: real
   depe: inteiro
procedimento calculoSalario (depe: inteiro)
inicio
      escolha depe
              caso 0
                  nsal <- sala * 1.05
              caso 1, 2, 3
                   nsal <- sala * 1.1
              caso 4, 5, 6
                   nsal <- sala * 1.15
              outrocaso
                   nsal <- sala * 1.2
      fimescolha
fimprocedimento
inicio
      escreva ("Qual � o nome do funcion�rio? ")
      leia (nome)
      escreva ("Qual � o atual sal�rio do funcion�rio? R$")
      leia (sala)
      escreva ("Quantas pessoas dependem dele? ")
      leia (depe)
      calculoSalario(depe)
      escreval ("O novo sal�rio do funcion�rio ", nome, " ser� de ", nsal)
      
      
fimalgoritmo
