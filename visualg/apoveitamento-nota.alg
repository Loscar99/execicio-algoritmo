algoritmo "semnome"
var
   nota_1, nota_2, media: real
   apro: caracter
inicio
      escreval ("-------------------------------------")
      escreval ("    ESCOLA NORMAL ALGUSTO BIZERRA    ")
      escreval ("-------------------------------------")
      escreva ("Primeira Nota: ")
      leia (nota_1)
      escreva ("Segunda Nota: ")
      leia (nota_2)
      escreval ("------------------------------------")
      
      media <- (nota_1 + nota_2) / 2
      
      se (media < 5) entao
         apro <- "F"
      senao
          se (media >= 5) e (media < 6) entao
             apro <- "E"
          senao
               se (media >= 6) e (media < 7) entao
                  apro <- "D"
               senao
                    se (media >= 7) e (media < 8) entao
                       apro <- "C"
                    senao
                         se (media >= 8) e (media < 9) entao
                            apro <- "B"
                         senao
                              apro <- "A"
                         fimse
                    fimse
               fimse
          fimse
      fimse
      
      escreval ("Média: ", media)
      escreval ("Aproveitamento: ", apro)
fimalgoritmo
