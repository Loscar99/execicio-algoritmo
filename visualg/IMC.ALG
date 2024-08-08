algoritmo "IMC"
var
   peso, altura, imc: real
   resp: caracter
procedimento calculoIMC(A, B: real)
inicio
       imc <- peso / (altura^2)
fimprocedimento
procedimento faixaIMC(valor: real)
inicio
      se (imc < 17) entao
         escreval ("Você está muito abaixo do peso ideal. ")
      senao
           se (imc >= 17) e (imc < 18.5) entao
              escreval ("Você está abaixo do peso. ")
           senao
                se (imc >= 18.5) e (imc < 25) entao
                   escreval ("Você está no peso ideal. ")
                senao
                     se (imc >= 25) e (imc < 30) entao
                        escreval ("Você está com sobrepeso. ")
                     senao
                          se (imc >= 30) e (imc < 35) entao
                             escreval ("Você está obeso. ")
                          senao
                               se (imc >= 35) e (imc < 40) entao
                                  escreval ("Você está com obesidade severa. ")
                               senao
                                    escreval ("Você é praticamente um homem/mulher morto(a). ")
                               fimse
                          fimse
                     fimse
                fimse
           fimse
      fimse
fimprocedimento
inicio
      repita
            LimpaTela
            escreva ("Qual o seu peso (em KG)? ")
            leia (peso)
            escreva ("Qual a sua altura (em metros)? ")
            leia (altura)

            calculoIMC(peso, altura)

            escreval ("Seu IMC é ", imc:5:2)

            faixaIMC(imc)
            
            escreva ("Deseja repetir? [s/n]: ")
            leia (resp)
      ate(resp = "N")
      escreval ("-------------------------------")
      escreval ("     FIM DO PROCEDIMENTO      ")
fimalgoritmo
