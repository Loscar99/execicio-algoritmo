algoritmo "DistanciEntrePontos"
var
   P1_X, P1_Y, P2_X, P2_Y, dist: real
procedimento top()
inicio
      escreval ("-----------------------------")
      escreval (" DISTÂNCIA ENTRE DOIS PONTOS ")
      escreval ("-----------------------------")
fimprocedimento
procedimento calculoDistancia(x1, y1, x2, y2: real)
inicio
      dist <- abs(RaizQ((x2 - x1)^2 + (y2 - y1)^2))
fimprocedimento
inicio
      top()
      escreval ("Informe os pontos do plano: ")
      escreval ("Ponto 1: ")
      escreva ("X: ")
      leia (P1_X)
      escreva ("Y: ")
      leia (P1_Y)
      Escreval ("Ponto 2: ")
      escreva ("X: ")
      leia (P2_X)
      escreva ("Y: ")
      leia (P2_Y)
      calculoDistancia(P1_X, P1_Y, P2_X, P2_Y)
      escreval ("A distancia entre esses pontos é ", dist:4:2)
fimalgoritmo
