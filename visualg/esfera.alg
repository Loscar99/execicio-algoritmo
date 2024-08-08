algoritmo "esfera"
var
   raio: real
   area, volu: real
inicio
      escreva ("Informe o raio da esfera: ")
      leia (raio)
      //Calculos
      
      //área
      area <- 4*pi*raio^2
      
      //volume
      volu <- 4/3*pi*raio^3
      
      //FimCalculos
      
      escreval("Área: ", area)
      escreval ("Volume: ", volu)
fimalgoritmo
