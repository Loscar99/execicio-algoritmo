algoritmo "Creusa01"
var
   ano_atual, ano_nasc, idade: inteiro
inicio
      escreva ("Em que ano nós estamos? ")
      leia (ano_atual)
      escreva ("Em que ano eu nasci? ")
      leia (ano_nasc)
      idade <- ano_atual - ano_nasc
      escreva ("Minha idade é ", idade, " anos,")
      se (idade >= 18) entao
         escreva (" e eu já posso ir preso :(")
      senao
         escreva (" ainda sou um bebê :>")
      fimse
fimalgoritmo
