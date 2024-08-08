algoritmo "fatorial-divisores"
var
   num, fatorial, num_div: vetor[1..10] de inteiro
   c: inteiro
   resp: caracter

funcao numeroFatorial(x: inteiro): inteiro
var i, fat: inteiro
inicio
      fat <- x  //O  fat(fatorial) deve iniciar com o valor em questão
      para i de (x-1) ate 1 passo -1 faca
           fat <- fat * i
      fimpara
      retorne fat
fimfuncao

funcao numeroDivisores(x: inteiro): inteiro
var i, divi: inteiro
inicio
      divi <- 1 //Esse um(1) representa a divisão do número por ele própio - pois o algoritmo verifica só ate a metade do número em questão (melhor eficiência), uma vez que não há mais divisores utrapassando a medade do número, a não ser, é claro, pelo própio número
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
      
      //leitura de valores - máximo = 10
      c <- 0
      repita
            escreval("(Quantidade máxima de leituras = 10)")
            escreval()
            c <- c + 1
            se (c <= 10) entao
               escreva("Digite o ", c, "º número: ")
               leia(num[c])
            senao
                 escreval()
                 escreval("Número máximo de valores atingido!")
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
      
      //chamada da funcão de fatorial ou de divisores
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
              escreval("Número: ", num[c])

              se (num[c] < 10) entao
                 escreval("Fatorial: ", fatorial[c])
                 escreval("-------------------------")
              senao
                   escreval("Número de divisores: ", num_div[c])
                   se (num_div[c] = 2) entao
                      escreval("É PRIMOOOO!")
                   fimse
                   escreval("-----------------------")
              fimse
           fimse
      fimpara
fimalgoritmo