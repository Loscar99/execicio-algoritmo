algoritmo "Triangulo Equil�tero"
var
   h, b, area, cat1, cat2, hip: real
inicio
      Escreva ("Informe a altura do tri�ngulo: ")
      leia (h)
      Escreva ("Agora, a base: ")
      leia (b)
      area <- (h*b/2)
      Escreval ("A �rea desse triangulo �: ", area)
      cat1 <- b/2
      cat2 <- h
      hip <- RaizQ(cat1^2 + cat2^2)
      Escreval ("O tamanho do lado do tri�ngulo � ", hip)
      
fimalgoritmo
