algoritmo "semnome"
var
   num, d, i, soma_div, n, quant, cont: inteiro
   
procedimento top()
inicio
      escreval("-------------------")
      escreval(" NÚMEROS PERFEITOS ")
      escreval("-------------------")
fimprocedimento
inicio
      top()
      escreval("Digite a quantidade de números perfeitos: ")
      leia(quant)
      limpatela
      top()
      
      num <- 0
      cont <- 0
      
      repita //Esse laço se repetirá ate ter a quantidade de números perfeitos que foi solicitado pelo usuário
            num <- num + 2  // números que será verificado se serão perfeitos, são pulados 2 em 2 pois todos os números perfeitos são pares, e de sobra, economiza no processamento
            soma_div <- 0
            para d de 1 ate num - 1 faca //ele se repetirá 1 número a menos pois senão o próprio número seria somado, deixando a conta errada
                 se (num % d = 0) entao
                    soma_div <- soma_div + d
                 fimse
            fimpara
            se (num = soma_div) entao //aqui se verifica se realmente o número é perfeito
               n <- n + 1  //quantidade de números perfeitos encontrados
               escreval(n, "º Número Perfeito: ", num)
            fimse
      ate (n = quant)
fimalgoritmo