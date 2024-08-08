algoritmo "declaração"
var
   resp: inteiro
   local, data, nome: caracter
inicio
      escreval ("Qual o seu nome? ")
      leia (nome)
      escreval ("Oi ", nome, ", tem uma coisa que eu queria dizer mas estou sem geito de falar...")
      escreval ("O que tu acha, eu falo ou deixo pra lá? ")
      escreval ("Resposta: [1] falar, [2] não falar: ")
      leia (resp)
      se (resp = 1) entao
         escreval ("Antes de falar, eu preciso saber se você tem namorado ou se você já ta gostando de alguém? ")
         escreval ("Resposta: [1] não tenho namorado ou alguém que eu esteja gostando; " )
         escreval ("[2] sim, tenho namorado ou alguém que gosto." )
         leia (resp)
         se (resp = 1) entao
              escreval ("A verdade é que faz um tempinho que você não sai da minha cabeça...")
              escreval ("Fiquei muito interessado em ti.")
              escreval ("Acho que estou gostando de você.")
              escreval ("Eu teria alguma chance com você?")
              escreval ("Resposta: [1] sim, [2] não")
              leia (resp)
              se (resp = 1) entao
                   escreval ("Sério!?, isso me deixa muito feliz!")
                   escreval ("Eu gostaria de te conhecer melhor.")
                   escreval ("Será que a gente poderia marcar um encomtro para se conhecer melhor?")
                   escreval ("Resposta: [1]Claro [2]Acho que ainda é sedo")
                   leia (resp)
                   se (resp = 1) entao
                        escreval ("Perfeito!, onde a gente poderia se encontrar? ")
                        leia (local)
                        escreval ("Otimo, ", local, " a gente pode se encontrar lá.")
                        escreval ("Qual seria uma dada boa para você? ")
                        leia (data)
                        escreval ("Então tá combinado! a gente se encontra em/no/na ", local)
                        escreval ("na data ", data)
                   senao
                       escreval ("Eu entendo, claro, foi tudo muito rápido.")
                       escreval ("Então a gente pode ir conversando por aqui mesmo,")
                       escreval ("Até você se sentir mais a vontade para nos conhecer presencialmente.")
                       escreval ("Pode ser assim? ")
                       escreval ("Resposta: [1]sim [2]não")
                       leia (resp)
                       se (resp = 1) entao
                          escreval ("Certo então")
                       senao
                            escreval ("Então se foda!")
                       fimse
                   fimse
              senao
                  escreval ("Entendi, é uma pena. ")
                  escreval ("você é a primeira pessoa que despertou isso em mim...")
                  escreval ("Tudo bem, eu não vou ficar insistindo, não quero ser incoviniênte. ")
                  escreval ("Se você quiser, pode disconciderar tudo isso, por favor, não deixe que isso afete nossa amizade. ")
                  escreval ("Tá bom?")
              fimse
         senao
              escreval ("Ah, então deixa pra lá")
         fimse
      senao
           escreval ("Entendi, é, talvez seja só besteira minha. ")
      fimse
      
fimalgoritmo
