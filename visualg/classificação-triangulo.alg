algoritmo "Triângulo"
var
   L1, L2, L3: real
   Eq, Is, Es, Tri: logico
inicio
      escreva ("Informe o tamanho do primeiro lado do triânguro: ")
      leia (L1)
      escreva ("Segundo lado do triângulo: ")
      leia (L2)
      escreva ("Terceiro lado do triângulo: ")
      leia (l3)
      
      Tri <- (L1 + L2 > L3) e (L1 + L3 > L2) e (L2 + L3 > L1)
      Eq <- (L1 = L2) e (L2 = L3)
      Is <- ((L1 = L2) e (L1 <> l3)) ou ((L1 = L3) e (L1 <> L2)) ou ((L2 = L3) e (L2 <> L1))
      Es <- (L1 <> L2) e (L2 <> L3) e (L3 <> L1)
      
      escreval ("É um triângulo: ", Tri)
      escreval ("É Equilátero: ", Eq)
      escreval ("É Isósceles: ", Is)
      escreval ("É Escaleno: ", Es)

fimalgoritmo
