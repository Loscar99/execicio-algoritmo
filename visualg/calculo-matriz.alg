algoritmo "matriz"
var
   m: vetor[1..4, 1..4] de inteiro
   i, j, sdp, p2l, mn3: inteiro
inicio
      sdp <- 0
      p2l <- 1
      mn3 <- 0
      Para i <- 1 ate 4 faca
           Para j <- 1 ate 4 faca
                Escreva("Digite um valor para a posição [", i, ",", j, "] da matriz 4x4: ")
                Leia (m[i,j])
           FimPara
      FimPara
      
      LimpaTela
      
      Para i <- 1 ate 4 faca
           Para j <- 1 ate 4 faca
                Escreva(m[i,j]:4)
                Se (i = j) entao // soma da diagonal principal
                   sdp <- sdp + m[i,j]
                FimSe
                Se (i = 2) entao // produto entre os valores da segunda linha
                   p2l <- p2l * m[i,j]
                FimSe
                Se (j = 3) entao // maior valor da terceira coluna
                   Se (m[i,j] > mn3) entao
                      mn3 <- m[i,j]
                   FimSe
                FimSe
           FimPara
           EscrevaL()
      FimPara
      EscrevaL("A soma dos valores da diagonal principal é: ", sdp)
      EscrevaL("O produto entre os valores da segunda linha é: ", p2l)
      EscrevaL("O maior valor da terceira coluna é: ", mn3)
fimalgoritmo
