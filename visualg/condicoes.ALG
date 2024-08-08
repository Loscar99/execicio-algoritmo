algoritmo "semnome"
var
   m, max, c: inteiro
   
procedimento numDivisores(n:inteiro)
var
   i, quant_div: inteiro

inicio
      escreval("Divisores de ", n, ": ")
      para i de 1 ate n faca
           se (n % i = 0) entao
              escreva(i)
              quant_div <- quant_div + 1
           fimse
      fimpara
      escreval()
      
      escreval("Números de divisores: ", quant_div)
fimprocedimento

funcao numFatorial(n:inteiro):inteiro
var i, fat: inteiro
inicio
      fat <- 1
      para i de 1 ate n faca
           fat <- fat * i
      fimpara
      retorne fat
fimfuncao

funcao somaInteiro(n: inteiro): inteiro
var i, somaInt: inteiro
inicio
      para i de 1 ate n faca
           somaInt <- somaInt + i
      fimpara
      retorne somaInt
fimfuncao

inicio
      escreva("Digite quantos valores serão computados: ")
      leia(max)
      escreval("------------------------------------------")
      escreval()
      para c de 1 ate max faca
         repita
               escreval()
               escreva("Digite um número: ")
               leia(m)
               se (m < 0) entao
                  escreval("*Digite um número positivo*")
               fimse
          ate(m > 0)
          
          se (m % 2 = 0) entao
             numDivisores(m)
          fimse
          
          se (m % 2 <> 0) e (m < 12) entao
             escreval("Fatorial de ", m, ": ")
             escreval(numFatorial(m))
          fimse
          
          se (m % 2 <> 0) e (m > 12) entao
             escreval("Soma dos inteiro de 1 até ", m, ": ")
             escreval(somaInteiro(m))
          fimse
      fimpara
      
      
fimalgoritmo