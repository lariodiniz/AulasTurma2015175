algoritmo "CONDCOMPOSTA"
// Função :
// Autor :
// Data : 13/11/2015
// Seção de Declarações
var
   A, B, X: inteiro

inicio
// Seção de Comandos
escreval ("Digite 2 numeros:")
leia (A,B)
X <- A + B
se X >= 10 entao
   X <- X + 5
   Escreval ("O resultado é maior ou igual a 10, então, somando 5, o resultado é ", X)
senao
   X <- X - 7
   Escreval ("O resultado é menor que 10, então, subtraindo 7, o resultado é ", X)
fimse
fimalgoritmo
