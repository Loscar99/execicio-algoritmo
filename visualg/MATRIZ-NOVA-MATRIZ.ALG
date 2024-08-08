algoritmo "matriz-nova-matriz"
var
   m: vetor[1..10, 1..10] de inteiro
   n: vetor[1..10, 1..10] de inteiro
   l, c: inteiro
   
procedimento lerEscreveMatriz()
var i, j: inteiro
inicio
      para i de 1 ate 10 faca
           para j de 1 ate 10 faca
                leia(m[i,j])
           fimpara
      fimpara
      
      limpatela
      
      para i de 1 ate 10 faca
           escreva("|")
           para j de 1 ate 10 faca
                escreva(m[i,j]:4)
           fimpara
           escreval("  |")
      fimpara
fimprocedimento

procedimento novaMatriz(lin, col: inteiro)
var i, j, a, b: inteiro
inicio
      para i de 1 ate 10 faca
           se (i <> lin) entao
               escreva("|")
           fimse
           // linha da matriz N
           a <- a + 1
           b <- 0
           para j de 1 ate 10 faca
                se (i <> lin) e (j <> col) entao
                   //coluna da matriz N
                   b <- b + 1
                   n[a,b] <- m[i,j]
                   escreva(n[a,b]:4)
                fimse
           fimpara
           se (i <> lin) entao
              escreval("  |")
           fimse
      fimpara
fimprocedimento

inicio
      lerEscreveMatriz()
      escreval()
      escreval("Selecione a Linha e Coluna para serem removidas")
      //verificação de validação da linha
      repita
            escreva("Linha: ")
            leia(l)
            se (l > 10) ou (l < 1) entao
               escreval("Linha Invalida")
            fimse
      ate (l > 0) e (l <= 10)
      //verificação de validação da coluna
      repita
            escreva("Coluna: ")
            leia(c)
            se (c > 10) ou (c < 1) entao
               escreval("Coluna Invalida")
            fimse
      ate (c > 0) e (c <= 10)
      escreval()
      
      escreval("NOVA MATRIZ")
      escreval()
      novaMatriz(l,c)
      
fimalgoritmo