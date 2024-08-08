algoritmo "futebol"
var
   time: vetor[1..3] de caracter
   i, s: inteiro
procedimento top()
inicio
      EscrevaL ("-------------------------")
      EscrevaL ("  CAMPEONATO DE FUTEBOL  ")
      EscrevaL ("-------------------------")
fimprocedimento
procedimento tabelaPartidas()
inicio
      EscrevaL ("-------------------------")
      EscrevaL ("   TABELAS DE PARTIDAS   ")
      EscrevaL ("-------------------------")
fimprocedimento
inicio
      top()
      Para i <- 1 ate 3 faca
           Escreva ("Nome do ", i, "º time: ")
           leia (time[i])
      FimPara
      LimpaTela
      tabelaPartidas()
      Para i <- 1 ate 3 faca
             Para s <- 1 ate 3 faca
                  Se (time[i] <> time[s]) entao
                    Escreval (time[i]:12, "[ ] x [ ] ", time[s])
                  FimSe
             FimPara
      FimPara
fimalgoritmo
