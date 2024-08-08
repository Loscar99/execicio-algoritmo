algoritmo "contador"
var
   num: inteiro
   //O vetor logo abaixo será responsável por fazer a contagem da quantidade de
   //números que estão nos seguintes intervalos:
   //0 - 25 = cont[1]
   //25 - 50 = cont[2]
   //50 - 75 = cont[3]
   //75 - 100 = cont[4]
   //100 - 150 = cont[5]
   //150 - 200 = cont[6]
   cont: vetor[1..6] de inteiro

inicio
      enquanto (num <= 200) faca
               limpatela
               
               escreval("Digite um número qualquer positivo:")
               leia(num)
               
               se (num >= 0) e (num < 25) entao
                  cont[1] <- cont[1] + 1
               senao
                    se (num < 50) entao
                       cont[2] <- cont[2] + 1
                    senao
                         se (num < 75) entao
                            cont[3] <- cont[3] +  1
                         senao
                              se (num  < 100) entao
                                 cont[4] <- cont[4] + 1
                              senao
                                   se (num < 150) entao
                                      cont[5] <- cont[5] + 1
                                   senao
                                        se (num <= 200) entao
                                           cont[6] <- cont[6] + 1
                                        fimse
                                   fimse
                              fimse
                         fimse
                    fimse
               fimse
      fimenquanto
      
      escreval("Teve a seguinte quantidade de número nesses intervalos: ")
      escreval("0 - 25 = ", cont[1])
      escreval("25 - 50 = ", cont[2])
      escreval("50 - 75 = ", cont[3])
      escreval("75 - 100 = ", cont[4])
      escreval("100 - 150 = ", cont[5])
      escreval("150 - 200 = ", cont[6])
fimalgoritmo