algoritmo "Area do quadrado equil�tero"
var
   lado, area, diag, apotema, raio, angulo: real
inicio
      Escreva ("Informe o tamanho do lado do quadrado: ")
      leia (lado)
      area <- lado * lado
      Escreval ("A �rea do quadrado de lado ", lado, " � ", area)
      diag <- lado*(RaizQ(2))
      Escreval ("A diagonal desse quadrado � ", diag)
      apotema <- lado/2
      Escreval ("A ap�tema (raio da circunfer�ncia inscrita ao quadrado) � ", apotema)
      raio <- diag/2
      Escreval ("O raio da circunfer�ncia circunscrita � ", raio)
      angulo <- 360/4
      Escreval ("Seus �ngulos s�o de ", angulo, "� graus")
      
fimalgoritmo
