algoritmo "semnome"
var
   num, d, i, soma_div, n, quant, cont: inteiro
   
procedimento top()
inicio
      escreval("-------------------")
      escreval(" N�MEROS PERFEITOS ")
      escreval("-------------------")
fimprocedimento
inicio
      top()
      escreval("Digite a quantidade de n�meros perfeitos: ")
      leia(quant)
      limpatela
      top()
      
      num <- 0
      cont <- 0
      
      repita //Esse la�o se repetir� ate ter a quantidade de n�meros perfeitos que foi solicitado pelo usu�rio
            num <- num + 2  // n�meros que ser� verificado se ser�o perfeitos, s�o pulados 2 em 2 pois todos os n�meros perfeitos s�o pares, e de sobra, economiza no processamento
            soma_div <- 0
            para d de 1 ate num - 1 faca //ele se repetir� 1 n�mero a menos pois sen�o o pr�prio n�mero seria somado, deixando a conta errada
                 se (num % d = 0) entao
                    soma_div <- soma_div + d
                 fimse
            fimpara
            se (num = soma_div) entao //aqui se verifica se realmente o n�mero � perfeito
               n <- n + 1  //quantidade de n�meros perfeitos encontrados
               escreval(n, "� N�mero Perfeito: ", num)
            fimse
      ate (n = quant)
fimalgoritmo