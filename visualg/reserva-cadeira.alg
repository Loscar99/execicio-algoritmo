algoritmo "reservaCadeiras"
var
   seat: vetor[1..10] de caracter
   cad, i: inteiro
   resp: caracter
procedimento fileira()
var i: inteiro
inicio
      Para i <- 1 ate 10 faca
           Se (seat[i] = "") entao
              Escreva(" [B ", i, "] ")
           senao
                Escreva(" [ -- ] ")
           FimSe
      FimPara
      EscrevaL ("")
      EscrevaL ("------------------------------------------------------------------------------------")
fimprocedimento
inicio
      Repita
            fileira()
            Escreva("Resevar a Cadeira: B" )
            Leia (cad)
            Se (seat[cad] = "") entao
               seat[cad] <- "X"
               EscrevaL ("Cadeira B", cad, " RESERVADA! ")
            senao
                 EscrevaL ("ERRO: Assento já reservado. ")
                 EscrevaL ("Por favor, escolha outro. ")
            FimSe
            Escreva ("Dejesa reservar outro? [S/N] ")
            Leia (resp)
            LimpaTela
      Ate (resp = "N")
      EscrevaL ("Os assentos reservados foram: ")
      Para i <- 1 ate 10 faca
           Se (seat[i] = "X") entao
               Escreva ("[ B ", i, " ]")
           FimSe
      FimPara
      EscrevaL ("")
      EscrevaL ("Deseja Confirmar? [S/N]")
      Leia (resp)
      LimpaTela
      Se (resp = "S") entao
         EscrevaL ("------------------------------------------------------")
         Escreva ("Os assentos ")
         Para i <- 1 ate 10 faca
              Se (seat[i] = "X") entao
                 Escreva ("[ B ", i, " ]")
              FimSe
         FimPara
         EscrevaL(" foram RESERVADOS. ")
         EscrevaL ("------------------------------------------------------")
      senao
           EscrevaL ("--------------------")
           EscrevaL (" OPEREÇÃO CANCELADA ")
           EscrevaL ("--------------------")
      FimSe
fimalgoritmo
