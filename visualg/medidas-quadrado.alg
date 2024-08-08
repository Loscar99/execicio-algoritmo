algoritmo "Area do quadrado equilátero"
var
   lado, area, diag, apotema, raio, angulo: real
inicio
      Escreva ("Informe o tamanho do lado do quadrado: ")
      leia (lado)
      area <- lado * lado
      Escreval ("A área do quadrado de lado ", lado, " é ", area)
      diag <- lado*(RaizQ(2))
      Escreval ("A diagonal desse quadrado é ", diag)
      apotema <- lado/2
      Escreval ("A apótema (raio da circunferência inscrita ao quadrado) é ", apotema)
      raio <- diag/2
      Escreval ("O raio da circunferência circunscrita é ", raio)
      angulo <- 360/4
      Escreval ("Seus ângulos são de ", angulo, "º graus")
      
fimalgoritmo
