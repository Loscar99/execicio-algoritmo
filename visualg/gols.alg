algoritmo "gols"
var
   time_1, time_2, statu: caracter
   gol_t1, gol_t2, dif: inteiro
inicio
      escreval ("Iforme os times participantes:")
      escreva ("Time 1: ")
      leia (time_1)
      escreva ("Time 2: ")
      leia (time_2)
      escreval ("-------------------------------------")
      escreva ("Quantos gols fez o(a) ", time_1, "? ")
      leia (gol_t1)
      escreva ("Quantos gols fez o(a) ", time_2, "? ")
      leia (gol_t2)
      escreval ("---------------------------------------")
      
      dif <- abs(gol_t1 - gol_t2)
      
      escolha dif
              caso 0
                   statu <- " EMPATE "
              caso 1, 2
                   statu <- " NORMAL "
              outrocaso
                   statu <- " GOLEADA! "
      fimescolha
      
      escreval (" DIFERENÇA: ", dif)
      escreval (" STATUS: ", statu)
      escreval ("--------------------------------------")
      
fimalgoritmo
