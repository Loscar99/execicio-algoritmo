algoritmo "semnome"
var
   nome: caracter
   dis, tempo, velociMed: real
   
funcao velocidadeMedia(d, t: real): real
var vm: real
inicio
      vm <- d / t
      retorne vm
fimfuncao
inicio
      escreva("Nome do piloto: ")
      leia(nome)
      escreva("Distancia pecorrida (km): ")
      leia(dis)
      escreva("Tempo para pecorrê-la (em horas): ")
      leia(tempo)
      
      velociMed <- velocidadeMedia(dis, tempo)
      
      escreval("A velocidade média do ", nome, " foi ",velociMed:3:0, "km/h ")
fimalgoritmo
