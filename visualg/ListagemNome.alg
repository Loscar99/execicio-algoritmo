algoritmo "ListagemNome"
var
   nome: caractere
   soC: vetor[1..10] de caractere
   c, tot: Inteiro
inicio
      Para c <- 1 ate 10 faca
           Escreva("Digite um nome: ")
           Leia (nome)
           Se (copia(maiusc(nome), 1, 1) = "C") entao
              tot <- tot + 1
              soC[tot] <- nome
           FimSe
      FimPara
      LimpaTela
      EscrevaL ("LISTAGEM FINAL")
      Para c <- 1 ate tot faca
           EscrevaL (soC[c])
      FimPara
fimalgoritmo
