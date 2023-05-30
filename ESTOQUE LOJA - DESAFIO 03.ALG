Algoritmo "Estoque Loja - Desafio 03"

Var

   numero_prod: vetor [1..100] de inteiro
   code_prod: vetor [1..100] de real
   nome_prod: vetor [1..100] de caractere
   quant_prod: vetor [1..100] de real
   i, x, x_var, quant, y, esc, cod_edit: inteiro
   soma, sub: real
   as, sn: caractere

Inicio

   x_var := 1
   y := 0
   soma := 0
   sub := 0
   cod_edit := 0

   repita

      escreval("________________________________________________________________")
      escreval("Adicionar Produto: 1")
      escreval("Ver Estoque:       2")
      escreval("Editar Produto:    3")
      escreval("________________________________________________________________")
      escreva("Sua Escolha: ")
      leia(esc)

      se esc = 1 entao

         escreval("Quantos produtos serão adicionados?")
         leia(quant)

         y := y + quant
         x := x_var

         para i de x ate y faca
            numero_prod[i] := i
            escreval("________________________________________________________________")
            escreva("Digite o Código do produto ", i,": ")
            leia(code_prod[i])
            escreval(".....")
            escreva("Digite o nome do produto ", i,": ")
            leia(nome_prod[i])
            escreval(".....")
            escreva("Digite a quantidade do produto ", i,": ")
            leia(quant_prod[i])

         fimpara

      senao

         se esc = 2 entao
            se y = 0 entao
               escreval("SEM PRODUTOS ADICIONADOS")
            senao
               escreval("________________________________________________________________")
               escreval("| Número | Código | Nome | Quantidade |")
               escreval("................................................................")
               para i de 1 ate y faca
                  escreva(numero_prod[i])
                  escreva ("  |  ")
                  escreva(code_prod[i])
                  escreva ("  |  ")
                  escreva(nome_prod[i])
                  escreva ("  |  ")
                  escreval(quant_prod[i])
                  escreval("................................................................")

               fimpara
            fimse
         senao

            se esc = 3 entao
               escreval("________________________________________________________________")
               escreval
               escreval("Deseja Adicionar ou Subtrair a quantidade de um prod.? ( a / s )")
               leia(as)
               se as = "a" entao
                  escreval("________________________________________________________________")
                  escreval("Digite o número do produto que deseja adicionar:")
                  leia(cod_edit)
                  escreval("..........")
                  escreval("O quanto deseja adicionar de ", nome_prod[cod_edit],"?")
                  leia(soma)
                  quant_prod[cod_edit] := quant_prod[cod_edit] + soma
                  soma := 0
                  cod_edit := 0
                  escreval("................................................................")
               senao
                  se as = "s" entao
                     escreval("________________________________________________________________")
                     escreval("Digite o número do produto que deseja subtrair:")
                     leia(cod_edit)
                     escreval("..........")
                     escreval("O quanto deseja subtrair de ", nome_prod[cod_edit],"?")
                     leia(sub)
                     quant_prod[cod_edit] := quant_prod[cod_edit] - sub
                     sub := 0
                     escreval("................................................................")
                  fimse
               fimse
            fimse
         fimse
      fimse

   ate (y >= 100)

Fimalgoritmo

