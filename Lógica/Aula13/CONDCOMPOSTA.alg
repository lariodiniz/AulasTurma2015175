algoritmo "CONDCOMPOSTA"
// Fun��o :
// Autor :
// Data : 13/11/2015
// Se��o de Declara��es
var
   A, B, X: inteiro

inicio
// Se��o de Comandos
escreval ("Digite 2 numeros:")
leia (A,B)
X <- A + B
se X >= 10 entao
   X <- X + 5
   Escreval ("O resultado � maior ou igual a 10, ent�o, somando 5, o resultado � ", X)
senao
   X <- X - 7
   Escreval ("O resultado � menor que 10, ent�o, subtraindo 7, o resultado � ", X)
fimse
fimalgoritmo
