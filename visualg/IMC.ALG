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
         escreval ("Voc� est� muito abaixo do peso ideal. ")
      senao
           se (imc >= 17) e (imc < 18.5) entao
              escreval ("Voc� est� abaixo do peso. ")
           senao
                se (imc >= 18.5) e (imc < 25) entao
                   escreval ("Voc� est� no peso ideal. ")
                senao
                     se (imc >= 25) e (imc < 30) entao
                        escreval ("Voc� est� com sobrepeso. ")
                     senao
                          se (imc >= 30) e (imc < 35) entao
                             escreval ("Voc� est� obeso. ")
                          senao
                               se (imc >= 35) e (imc < 40) entao
                                  escreval ("Voc� est� com obesidade severa. ")
                               senao
                                    escreval ("Voc� � praticamente um homem/mulher morto(a). ")
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

            escreval ("Seu IMC � ", imc:5:2)

            faixaIMC(imc)
            
            escreva ("Deseja repetir? [s/n]: ")
            leia (resp)
      ate(resp = "N")
      escreval ("-------------------------------")
      escreval ("     FIM DO PROCEDIMENTO      ")
fimalgoritmo
