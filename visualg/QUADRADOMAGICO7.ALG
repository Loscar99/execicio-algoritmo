Algoritmo "QuadradoMagico7"
Var
    i, j, n, num, linha, coluna, nova_linha, nova_coluna: inteiro
    quadrado_magico: vetor[1..7, 1..7] de inteiro

Inicio
    // Define a ordem do quadrado mágico
    n <- 7

    // Inicializa a matriz quadrado_magico com zeros
    para i de 1 ate n faca
        para j de 1 ate n faca
            quadrado_magico[i, j] <-  0
        fimpara
    fimpara

    // Define a posição inicial
    linha <- 1
    coluna <- (n div 2) + 1

    // Preenche o quadrado mágico
    para num de 1 ate n * n faca
        quadrado_magico[linha, coluna] <- num

        // Calcula a próxima posição
        nova_linha <- linha - 1
        nova_coluna <- coluna - 1

        // Ajusta para os limites da matriz (wrap-around)
        se nova_linha < 1 entao
            nova_linha <- n
        fimse
        se nova_coluna < 1 entao
            nova_coluna <- n
        fimse

        // Se a próxima posição já estiver preenchida, mova-se para baixo na mesma coluna
        se quadrado_magico[nova_linha, nova_coluna] <> 0 entao
            linha <- linha + 1
            se linha > n entao
                linha <- 1
            fimse
        senao
            linha <- nova_linha
            coluna <- nova_coluna
        fimse
    fimpara

    // Imprime o quadrado mágico
    para i de 1 ate n faca
        para j de 1 ate n faca
            escreva(quadrado_magico[i, j]:3)
        fimpara
        escreval()
    fimpara
Fimalgoritmo
