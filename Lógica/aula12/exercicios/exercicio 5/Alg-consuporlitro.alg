algoritmo "consuporlitro"
// Fun��o :
// Autor :
// Data : 11/11/2015
// Se��o de Declara��es 
var
     distancia, consumo, litrosporcon: real
inicio
// Se��o de Comandos 
escreva("informe a distancia a percorrer na viagem, em quilometros: ")
leia(distancia)
escreva("informe o consumo m�dio do automovel, em quilometros: ")
leia(consumo)
litrosporcon <- distancia / consumo
escreva("O autoovel vai consumir ", litrosporcon, " litros nesta viagem")
fimalgoritmo
