algoritmo "pizzaria"
var
   tipo_pizza: inteiro
   sabor_pizza: vetor[1..4] de inteiro
   
procedimento top() //cabeçalho da estrutura
inicio
      escreval("=======================================")
      escreval("   P I Z Z R I A   B O M   G O S T O   ")
      escreval("=======================================")
fimprocedimento

procedimento pizzaOpcao() //opções de tamanho de pizzas
var confirm: caracter
inicio
      repita
            escreval(" PIZZAS - OPÇÕES: ")
            escreval("-----------------------------")
            escreval("[1] Pizza Pequena - R$ 13,00 ")
            escreval("   (4 fatias - até 2 sabores)")
            escreval()
            escreval("[2] Pizza Média - R$ 17,00 ")
            escreval("   (6 fatias - até 3 sabores)")
            escreval()
            escreval("[3] Pizza Grande - R$ 26,00 ")
            escreval("   (8 fatias - até 3 sabores)")
            escreval()
            escreval("[4] Pizza Família - R$ 33,00 ")
            escreval("   (10 fatias - até 4 sabores)")
            escreval()
            escreval("[5] Não quero pizza")
            escreval("-----------------------------")
            escreva("Informe a opção você deseja: ")
            leia(tipo_pizza)
            se (tipo_pizza > 5) entao
            
               limpatela
               top()
               
               escreval("----------------------------------")
               escreval("Opção não encontrada. ")
               escreval("Por favor, verifique sua resposta")
               escreval("e tente novamente.")
               escreval("----------------------------------")
            fimse
            
            //Confirmar o pedidio
            
            se (tipo_pizza >=1) e (tipo_pizza <=5) entao
               escolha tipo_pizza
                       caso 1
                            escreval()
                            escreval("Você escolheu a pizza pequena - R$ 13,00 ")
                            escreval("Deseja confirmar [S/N]? ")
                            leia(confirm)
                            se (confirm = "S") entao
                               limpatela
                               top()
                               escreval("------Opção Confirmada!------")
                            senao
                                 limpatela
                                 top()
                                 escreval("------Opção Cancelada!------")
                                 escreval("----------------------------")
                            fimse
                       caso 2
                            escreval()
                            escreval("Você escolheu a Pizza média - R$ 17,00 ")
                            escreval("Deseja confirmar [S/N]? ")
                            leia(confirm)
                            se (confirm = "S") entao
                               limpatela
                               top()
                               escreval("------Opção Confirmada!------")
                            senao
                                 limpatela
                                 top()
                                 escreval("------Opção Cancelada!------")
                                 escreval("----------------------------")
                            fimse
                       caso 3
                            escreval()
                            escreval("Você escolheu a Pizza Grande - R$ 26,00 ")
                            escreval("Deseja confirmar [S/N]? ")
                            leia(confirm)
                            se (confirm = "S") entao
                               limpatela
                               top()
                               escreval("------Opção Confirmada!------")
                            senao
                                 limpatela
                                 top()
                                 escreval("------Opção Cancelada!------")
                                 escreval("----------------------------")
                            fimse
                       caso 4
                            escreval()
                            escreval("Você escolheu a pizza Família - R$ 33,00 ")
                            escreval("Deseja confirmar [S/N]? ")
                            leia(confirm)
                            se (confirm = "S") entao
                               limpatela
                               top()
                               escreval("---Opção Confirmada!---")
                            senao
                                 limpatela
                                 top()
                                 escreval("------Opção Cancelada!------")
                                 escreval("----------------------------")
                            fimse
                       caso 5
                            escreval()
                            escreval("Você não escolheu nenhuma pizza ")
                            escreval("Deseja confirmar [S/N]? ")
                            leia(confirm)
                            se (confirm = "S") entao
                               limpatela
                               top()
                               escreval("------Opção Confirmada!------")
                            senao
                                 limpatela
                                 top()
                                 escreval("------Opção Cancelada!------")
                                 escreval("----------------------------")
                            fimse
               fimescolha
            fimse
      ate (tipo_pizza >= 1) e (tipo_pizza <= 5) e (confirm = "S")
fimprocedimento

procedimento pizzaCardapio() //opções de sabores
inicio
      escreval("|  Cardápio de Pizzas  |")
      escreval("------------------------")
      escreval("| [1] Frango":23, "|")
      escreval("| [2] Catupiry":23, "|")
      escreval("| [3] Muçarela":23, "|")
      escreval("| [4] Calabreza":23, "|")
      escreval("| [5] Portuguesa":23, "|")
      escreval("| [6] Pepperoni":23, "|")
      escreval("| [7] Napolitana":23, "|")
      escreval("| [8] Modo da Casa":23, "|")
      escreval("------------------------")
fimprocedimento

procedimento pizzaSabores() //opções de sabores
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
                              escreval("Pizza ", tam_pizza, " - Escolha até 2 sabores: ")
                              escreva( c, "º sabor: ")
                              leia(sabor_pizza[c])
                         fimpara
                    caso 2
                         tam_pizza <- "Média"
                         para c de 1 ate 3 faca
                              limpatela
                              top()
                              pizzaCardapio()
                              escreval("Pizza ", tam_pizza, " - Escolha até 3 sabores: ")
                              escreva( c, "º sabor: ")
                              leia(sabor_pizza[c])
                         fimpara
                    caso 3
                         tam_pizza <- "Grande"
                         para c de 1 ate 3 faca
                              limpatela
                              top()
                              pizzaCardapio()
                              escreval("Pizza ", tam_pizza, " - Escolha até 3 sabores: ")
                              escreva( c, "º sabor: ")
                              leia(sabor_pizza[c])
                         fimpara
                    caso 4
                         tam_pizza <- "Família"
                         para c de 1 ate 4 faca
                              limpatela
                              top()
                              pizzaCardapio()
                              escreval("Pizza ", tam_pizza, " - Escolha até 4 sabores: ")
                              escreva( c, "º sabor: ")
                              leia(sabor_pizza[c])
                         fimpara
            fimescolha
            
            limpatela
            
            top()
            escreval(" CONFIRMAR PEDIDO: ")
            escreval("-------------------")
            escreval()
            escreval("Você escolhe uma pizza ", minusc(tam_pizza))
            escreval("com os seguintes sabores: ")

            para c de 1 ate 4 faca
                    escolha sabor_pizza[c]
                            caso 1
                                 escreva(" Frango ")
                            caso 2
                                 escreva(" Catupiry ")
                            caso 3
                                 escreva(" Muçarela ")
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
