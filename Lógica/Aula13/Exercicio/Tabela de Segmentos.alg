algoritmo "TABELA DE SEGMENTOS"
// Fun��o :
// Autor :
// Data : 13/11/2015
// Se��o de Declara��es 
var
idade: inteiro


inicio
// Se��o de Comandos 
escreval("|-----------------------------------------------------------------------------|")
escreval("|---------------------------- TABELA DE SEGMENTOS ----------------------------|")
escreval("|-----------------------------------------------------------------------------|")
escreval("")
escreval("|-----------------------------------------------------------------------------|")
escreva("                               Informe a Idade: ")
leia(idade)
escreval("|-----------------------------------------------------------------------------|")
escreval("")
se idade < 12 entao
escreval("|>>---------------------------- Categoria Bebe -----------------------------<<|")

senao
     se idade < 16 entao
        escreval("|--------------------------->> Categoria Juvenil <<---------------------------|")
     senao
          se idade < 30 entao
             escreval("|--------------------------->> Categoria Adulto <<----------------------------|")
          senao
               se (idade >= 30) e (idade <= 65) entao
                  escreval("|--------------------------->> Categoria Master <<----------------------------|")

               senao
                    escreval("|--------------------------->> Categoria Senior <<----------------------------|")

               fimse
          fimse
     fimse
fimse
escreval("")
escreval("|-----------------------------------------------------------------------------|")
fimalgoritmo
