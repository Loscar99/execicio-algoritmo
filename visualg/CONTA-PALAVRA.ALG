algoritmo "conta-palavra"
var
   words: vetor[1..1000] de caracter // Declara um vetor de 10 caracteres
   numero_words: inteiro  // Vari�vel para armazenar o n�mero de palavras
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

// Procedimento para somar o n�mero de palavras no vetor
procedimento somarPalavras(max: inteiro)
var c: inteiro
inicio
      // Loop para percorrer cada posi��o do vetor
      para c de 1 ate max faca
           // Soma o n�mero de palavras na posi��o atual do vetor
           numero_words <- numero_words + numeroPalavra(words[c])
      fimpara
fimprocedimento

// Fun��o para contar o n�mero de palavras em um caracter
funcao numeroPalavra(x: caracter): inteiro
var
   c, palavra: inteiro
   anterior: caracter
inicio
      // Loop para percorrer cada posi��o do caracter
      para c de 1 ate compr(x) faca

           // Se o caracter atual n�o � espa�o e o anterior era espa�o, conta uma nova palavra
           se (copia(x, c, 1) <> " ") e (anterior <> "letra") entao
              palavra <- palavra + 1
              anterior <- "letra" // Atualiza anterior para indicar que estamos em uma palavra
           senao
                // Se o caracter atual � espa�o, atualiza anterior para indicar espa�o
                se (copia(x, c, 1) = " ") entao
                   anterior <- "branco"
                fimse
           fimse

      fimpara
      // Retorna o n�mero de palavras contadas
      retorne palavra
fimfuncao

inicio
      escreval("Quantos vetores ser�o lidos (max = 1000): ")
      leia(quant)
      // Chama o procedimento para ler valores no vetor
      lerVetor(quant)

      // Chama o procedimento para contar o n�mero de palavras
      somarPalavras(quant)

      // Exibe o n�mero de palavras contadas
      escreval("O n�mero de palavras digitadas foi: ", numero_words)

fimalgoritmo
