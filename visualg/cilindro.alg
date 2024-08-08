algoritmo "semnome"
var
   raio, altu: real
   a_late, a_tota, a_base, volu: real
inicio
      escreval ("Informe as seguintes medidas do cilindro: ")
      escreva ("Raio: ")
      leia (raio)
      escreva ("Altura: ")
      leia (altu)
      
      //calculos
      
      //área da base:
      a_base <- pi*raio^2
      
      //área lateral:
      a_late <- 2*pi*raio*altu
      
      //área total:
      a_tota <- a_base + a_late
      
      //volume:
      volu <- a_base*altu
      
      //FimCalculo
      
      escreval ("Volume: ", volu)
      escreval ("Área da base: ", a_base)
      escreval ("Área lateral: ", a_late)
      escreval ("Área Total: ", a_tota)
fimalgoritmo
