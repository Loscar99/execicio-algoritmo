algoritmo "fatorial-divisores"
var
   num, fatorial, num_div: vetor[1..10] de inteiro
   c: inteiro
   resp: caracter

funcao numeroFatorial(x: inteiro): inteiro
var i, fat: inteiro
inicio
      fat <- x  //O  fat(fatorial) deve iniciar com o valor em quest�o
      para i de (x-1) ate 1 passo -1 faca
           fat <- fat * i
      fimpara
      retorne fat
fimfuncao

funcao numeroDivisores(x: inteiro): inteiro
var i, divi: inteiro
inicio
      divi <- 1 //Esse um(1) representa a divis�o do n�mero por ele pr�pio - pois o algoritmo verifica s� ate a metade do n�mero em quest�o (melhor efici�ncia), uma vez que n�o h� mais divisores utrapassando a medade do n�mero, a n�o ser, � claro, pelo pr�pio n�mero
      para i de 1 ate (x div 2) faca
           se (x % i = 0) entao
              divi <- divi + 1
           fimse
      fimpara
      retorne divi
fimfuncao

inicio
      escreval("FATORIAL/DIVISORES")
      escreval("------------------")
      
      //leitura de valores - m�ximo = 10
      c <- 0
      repita
            escreval("(Quantidade m�xima de leituras = 10)")
            escreval()
            c <- c + 1
            se (c <= 10) entao
               escreva("Digite o ", c, "� n�mero: ")
               leia(num[c])
            senao
                 escreval()
                 escreval("N�mero m�ximo de valores atingido!")
                 interrompa
            fimse
            escreva("Deseja repetir [s/n]?")
            
            //garantir que as respostas sejam n ou s
            repita
                  leia(resp)
                  se (minusc(resp) <> "s") e (minusc(resp) <> "n") entao
                     escreval("Resposta Invalida!")
                  fimse
            ate (minusc(resp) = "s") ou (minusc(resp) = "n")
            
      ate (minusc(resp) = "n")
      
      //chamada da func�o de fatorial ou de divisores
      para c de 1 ate 10 faca
           se (num[c] < 10) entao
              fatorial[c] <- numeroFatorial(num[c])
           senao
                num_div[c] <- numeroDivisores(num[c])
           fimse
      fimpara
      
      //Escrever os resultados
      escreval()
      escreval("DADOS: ")
      escreval()
      para c de 1 ate 10 faca
           se (num[c] <> 0) entao
              escreval("N�mero: ", num[c])

              se (num[c] < 10) entao
                 escreval("Fatorial: ", fatorial[c])
                 escreval("-------------------------")
              senao
                   escreval("N�mero de divisores: ", num_div[c])
                   se (num_div[c] = 2) entao
                      escreval("� PRIMOOOO!")
                   fimse
                   escreval("-----------------------")
              fimse
           fimse
      fimpara
fimalgoritmo