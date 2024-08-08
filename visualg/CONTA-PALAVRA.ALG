algoritmo "conta-palavra"
var
   words: vetor[1..1000] de caracter // Declara um vetor de 10 caracteres
   numero_words: inteiro  // Variável para armazenar o número de palavras
   quant: inteiro

// Procedimento para ler valores no vetor
procedimento lerVetor(max: inteiro)
var c: inteiro
inicio
      // Loop para ler os quantidade definida de caracteres no vetor
      para c de 1 ate max faca
           leia(words[c])
      fimpara
fimprocedimento

// Procedimento para somar o número de palavras no vetor
procedimento somarPalavras(max: inteiro)
var c: inteiro
inicio
      // Loop para percorrer cada posição do vetor
      para c de 1 ate max faca
           // Soma o número de palavras na posição atual do vetor
           numero_words <- numero_words + numeroPalavra(words[c])
      fimpara
fimprocedimento

// Função para contar o número de palavras em um caracter
funcao numeroPalavra(x: caracter): inteiro
var
   c, palavra: inteiro
   anterior: caracter
inicio
      // Loop para percorrer cada posição do caracter
      para c de 1 ate compr(x) faca

           // Se o caracter atual não é espaço e o anterior era espaço, conta uma nova palavra
           se (copia(x, c, 1) <> " ") e (anterior <> "letra") entao
              palavra <- palavra + 1
              anterior <- "letra" // Atualiza anterior para indicar que estamos em uma palavra
           senao
                // Se o caracter atual é espaço, atualiza anterior para indicar espaço
                se (copia(x, c, 1) = " ") entao
                   anterior <- "branco"
                fimse
           fimse

      fimpara
      // Retorna o número de palavras contadas
      retorne palavra
fimfuncao

inicio
      escreval("Quantos vetores serão lidos (max = 1000): ")
      leia(quant)
      // Chama o procedimento para ler valores no vetor
      lerVetor(quant)

      // Chama o procedimento para contar o número de palavras
      somarPalavras(quant)

      // Exibe o número de palavras contadas
      escreval("O número de palavras digitadas foi: ", numero_words)

fimalgoritmo
