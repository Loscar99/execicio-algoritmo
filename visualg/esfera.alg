algoritmo "esfera"
var
   raio: real
   area, volu: real
inicio
      escreva ("Informe o raio da esfera: ")
      leia (raio)
      //Calculos
      
      //�rea
      area <- 4*pi*raio^2
      
      //volume
      volu <- 4/3*pi*raio^3
      
      //FimCalculos
      
      escreval("�rea: ", area)
      escreval ("Volume: ", volu)
fimalgoritmo
