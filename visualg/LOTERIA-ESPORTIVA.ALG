algoritmo "loteria-esportiva"
var
   g, r: vetor[1..13] de inteiro             //gabarito - bilhete / respostas dos apostadores
   nome_apos: vetor[1..10] de caracter    //nome dos apostadores
   cod_bilhete: vetor[1..10] de inteiro  //código do bilhete
   acertos: vetor[1..10] de inteiro          //acertos dos apostadores
   quant_apos, i: inteiro                    //quantidade de apostadores
   
procedimento gabaritoResultado()
var c: inteiro
inicio
      escreval("------------------------")
      escreval("  RESULTADOS DOS JOGOS  ")
      escreval("------------------------")
      escreval("Respostas Válidas: ")
      escreval("1 = casa")
      escreval("2 = visitante")
      escreval("3 = empate")
      escreval("------------------------")
      escreval()
      
      para c de 1 ate 13 faca
           repita
                 escreva(c, "º jogo: ")
                 leia(g[c])
                 se (g[c] > 3) ou (g[c] < 1) entao
                    escreval("Resposta Invalida!")
                    escreval("Verifique as respostas válidas e tente novamente.")
                 fimse
           ate (g[c] >=1) e (g[c] <= 3)
      fimpara
fimprocedimento

procedimento cadastroApostador(n: inteiro)
var c, s: inteiro
inicio
      escreval("CADASTRO DE APOSTADORES")
      escreval("-----------------------")
      
      para c de 1 ate n faca
           escreval(c, "º Apostador(a): ")
           escreva("Nome: ")
           leia(nome_apos[c])
           escreva("Código do bilhete: ")
           leia(cod_bilhete[c])
           escreval("---------------------")
           
           escreval()
           escreval("Dê seu palpite: ")
           para s de 1 ate 13 faca
              repita
                    escreva(s, "º jogo: ")
                    leia(r[s])
                    se (r[s] > 3) ou (r[s] < 1) entao
                       escreval("Resposta Invalida!")
                       escreval("Verifique as respostas válidas e tente novamente.")
                    fimse
              ate (r[s] >=1) e (r[s] <= 3)
           fimpara
           escreval()
           
           acertos[c] <- contagemAcertos()
           
      fimpara
fimprocedimento

funcao contagemAcertos(): inteiro
var c, acer: inteiro
inicio
      acer <- 0
      para c de 1 ate 13 faca
           se (g[c] = r[c]) entao
              acer <- acer + 1
           fimse
      fimpara
      retorne acer
fimfuncao

inicio
      gabaritoResultado()
      
      limpatela
      
      escreva("Digite a quantidade de apostadores (max = 10): ")
      repita
            leia(quant_apos)
            se (quant_apos > 10) entao
               escreval("Utrapassou a quantidade máxima permitido.")
            fimse
            se (quant_apos = 0) entao
               escreval("Não foi informado a quantidade de apostadores")
            fimse
            se (quant_apos < 0) entao
               escreval("Você digitou um valor negativo, informe um  valor positivo")
            fimse
      ate(quant_apos <= 10) e (quant_apos > 1)
      
      limpatela
      
      cadastroApostador(quant_apos)
      
      limpatela
      
      escreval("RESULTADOS: ")
      escreval("----------------")
      para i de 1 ate quant_apos faca
           escreval()
           escreval("Apostador ", i)
           escreval()
           escreval("Nome: ", nome_apos[i])
           escreva("Bilhete: ")
           se (cod_bilhete[i] < 10) entao
              escreval("000", cod_bilhete[i]:1)
           senao
                se (cod_bilhete[i] < 100) entao
                   escreval("00", cod_bilhete[i]:1)
                senao
                     se (cod_bilhete[i] < 1000) entao
                        escreval("0", cod_bilhete[i]:1)
                     senao
                          se (cod_bilhete[i] < 10000) entao
                             escreval(cod_bilhete[i])
                          fimse
                     fimse
                fimse
           fimse
           
           escreval("ACERTOS: ", acertos[i])
           se (acertos[i] = 13) entao
              escreval("-------------------")
              escreval("GANHADOR, PARABÉNS!")
              escreval("-------------------")
           senao
                escreval("--------------------")
           fimse
      fimpara
fimalgoritmo