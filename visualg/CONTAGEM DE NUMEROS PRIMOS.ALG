algoritmo "contagem de numeros primos"
var
   num, i, d, cont, primo, max, c: inteiro
inicio
      max <- 2
      
      para c de 1 ate max faca
           limpatela
           escreva("Digite um número: ")
         leia(num)
         d <- 0
         para i de 1 ate num faca
              se (num % i = 0) entao
                 d <- d + 1
              fimse
         fimpara

         se (d = 2) entao
            cont <- cont + 1
         fimse
      fimpara
      
      limpatela
      
      escreval("Dados estatísticos: ")
      escreval("Total de números: ", max)
      escreval("Total de primos: ",cont)
      escreval("Percentual de primos: ",(cont*100)/max:3:1, "%")

      

fimalgoritmo