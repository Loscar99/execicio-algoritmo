algoritmo "pizzaria"
var
   tipo_pizza: inteiro
   sabor_pizza: vetor[1..4] de inteiro
   
procedimento top() //cabe�alho da estrutura
inicio
      escreval("=======================================")
      escreval("   P I Z Z R I A   B O M   G O S T O   ")
      escreval("=======================================")
fimprocedimento

procedimento pizzaOpcao() //op��es de tamanho de pizzas
var confirm: caracter
inicio
      repita
            escreval(" PIZZAS - OP��ES: ")
            escreval("-----------------------------")
            escreval("[1] Pizza Pequena - R$ 13,00 ")
            escreval("   (4 fatias - at� 2 sabores)")
            escreval()
            escreval("[2] Pizza M�dia - R$ 17,00 ")
            escreval("   (6 fatias - at� 3 sabores)")
            escreval()
            escreval("[3] Pizza Grande - R$ 26,00 ")
            escreval("   (8 fatias - at� 3 sabores)")
            escreval()
            escreval("[4] Pizza Fam�lia - R$ 33,00 ")
            escreval("   (10 fatias - at� 4 sabores)")
            escreval()
            escreval("[5] N�o quero pizza")
            escreval("-----------------------------")
            escreva("Informe a op��o voc� deseja: ")
            leia(tipo_pizza)
            se (tipo_pizza > 5) entao
            
               limpatela
               top()
               
               escreval("----------------------------------")
               escreval("Op��o n�o encontrada. ")
               escreval("Por favor, verifique sua resposta")
               escreval("e tente novamente.")
               escreval("----------------------------------")
            fimse
            
            //Confirmar o pedidio
            
            se (tipo_pizza >=1) e (tipo_pizza <=5) entao
               escolha tipo_pizza
                       caso 1
                            escreval()
                            escreval("Voc� escolheu a pizza pequena - R$ 13,00 ")
                            escreval("Deseja confirmar [S/N]? ")
                            leia(confirm)
                            se (confirm = "S") entao
                               limpatela
                               top()
                               escreval("------Op��o Confirmada!------")
                            senao
                                 limpatela
                                 top()
                                 escreval("------Op��o Cancelada!------")
                                 escreval("----------------------------")
                            fimse
                       caso 2
                            escreval()
                            escreval("Voc� escolheu a Pizza m�dia - R$ 17,00 ")
                            escreval("Deseja confirmar [S/N]? ")
                            leia(confirm)
                            se (confirm = "S") entao
                               limpatela
                               top()
                               escreval("------Op��o Confirmada!------")
                            senao
                                 limpatela
                                 top()
                                 escreval("------Op��o Cancelada!------")
                                 escreval("----------------------------")
                            fimse
                       caso 3
                            escreval()
                            escreval("Voc� escolheu a Pizza Grande - R$ 26,00 ")
                            escreval("Deseja confirmar [S/N]? ")
                            leia(confirm)
                            se (confirm = "S") entao
                               limpatela
                               top()
                               escreval("------Op��o Confirmada!------")
                            senao
                                 limpatela
                                 top()
                                 escreval("------Op��o Cancelada!------")
                                 escreval("----------------------------")
                            fimse
                       caso 4
                            escreval()
                            escreval("Voc� escolheu a pizza Fam�lia - R$ 33,00 ")
                            escreval("Deseja confirmar [S/N]? ")
                            leia(confirm)
                            se (confirm = "S") entao
                               limpatela
                               top()
                               escreval("---Op��o Confirmada!---")
                            senao
                                 limpatela
                                 top()
                                 escreval("------Op��o Cancelada!------")
                                 escreval("----------------------------")
                            fimse
                       caso 5
                            escreval()
                            escreval("Voc� n�o escolheu nenhuma pizza ")
                            escreval("Deseja confirmar [S/N]? ")
                            leia(confirm)
                            se (confirm = "S") entao
                               limpatela
                               top()
                               escreval("------Op��o Confirmada!------")
                            senao
                                 limpatela
                                 top()
                                 escreval("------Op��o Cancelada!------")
                                 escreval("----------------------------")
                            fimse
               fimescolha
            fimse
      ate (tipo_pizza >= 1) e (tipo_pizza <= 5) e (confirm = "S")
fimprocedimento

procedimento pizzaCardapio() //op��es de sabores
inicio
      escreval("|  Card�pio de Pizzas  |")
      escreval("------------------------")
      escreval("| [1] Frango":23, "|")
      escreval("| [2] Catupiry":23, "|")
      escreval("| [3] Mu�arela":23, "|")
      escreval("| [4] Calabreza":23, "|")
      escreval("| [5] Portuguesa":23, "|")
      escreval("| [6] Pepperoni":23, "|")
      escreval("| [7] Napolitana":23, "|")
      escreval("| [8] Modo da Casa":23, "|")
      escreval("------------------------")
fimprocedimento

procedimento pizzaSabores() //op��es de sabores
var
   c: inteiro //contador(para)
   confirm, tam_pizza: caracter
   sabor: vetor[1..8] de caracter
inicio
      repita
            escolha tipo_pizza
                    caso 1
                         tam_pizza <- "Pequena"
                         para c de 1 ate 2 faca
                              limpatela
                              top()
                              pizzaCardapio()
                              escreval("Pizza ", tam_pizza, " - Escolha at� 2 sabores: ")
                              escreva( c, "� sabor: ")
                              leia(sabor_pizza[c])
                         fimpara
                    caso 2
                         tam_pizza <- "M�dia"
                         para c de 1 ate 3 faca
                              limpatela
                              top()
                              pizzaCardapio()
                              escreval("Pizza ", tam_pizza, " - Escolha at� 3 sabores: ")
                              escreva( c, "� sabor: ")
                              leia(sabor_pizza[c])
                         fimpara
                    caso 3
                         tam_pizza <- "Grande"
                         para c de 1 ate 3 faca
                              limpatela
                              top()
                              pizzaCardapio()
                              escreval("Pizza ", tam_pizza, " - Escolha at� 3 sabores: ")
                              escreva( c, "� sabor: ")
                              leia(sabor_pizza[c])
                         fimpara
                    caso 4
                         tam_pizza <- "Fam�lia"
                         para c de 1 ate 4 faca
                              limpatela
                              top()
                              pizzaCardapio()
                              escreval("Pizza ", tam_pizza, " - Escolha at� 4 sabores: ")
                              escreva( c, "� sabor: ")
                              leia(sabor_pizza[c])
                         fimpara
            fimescolha
            
            limpatela
            
            top()
            escreval(" CONFIRMAR PEDIDO: ")
            escreval("-------------------")
            escreval()
            escreval("Voc� escolhe uma pizza ", minusc(tam_pizza))
            escreval("com os seguintes sabores: ")

            para c de 1 ate 4 faca
                    escolha sabor_pizza[c]
                            caso 1
                                 escreva(" Frango ")
                            caso 2
                                 escreva(" Catupiry ")
                            caso 3
                                 escreva(" Mu�arela ")
                            caso 4
                                 escreva(" Calabreza ")
                            caso 5
                                 escreva(" Portuguesa ")
                            caso 6
                                 escreva(" Pepperoni ")
                            caso 7
                                 escreva(" Napolitana ")
                            caso 8
                                 escreva(" Modo da Casa ")
                    fimescolha
            fimpara
            escreval()
            escreval()
            escreval("---------------------")
            escreva("Deseja confirmar [s/n]: ")
            leia(confirm)
      ate (confirm = "S")
fimprocedimento
inicio
      top() // logo da pizzaria
      
      pizzaOpcao() // escolher a opcao de pizza
      
      se (tipo_pizza <> 5) entao
        pizzaSabores()
      fimse
fimalgoritmo
