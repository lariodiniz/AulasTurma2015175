algoritmo "consuporlitro"
// Função :
// Autor :
// Data : 11/11/2015
// Seção de Declarações 
var
     distancia, consumo, litrosporcon: real
inicio
// Seção de Comandos 
escreva("informe a distancia a percorrer na viagem, em quilometros: ")
leia(distancia)
escreva("informe o consumo médio do automovel, em quilometros: ")
leia(consumo)
litrosporcon <- distancia / consumo
escreva("O autoovel vai consumir ", litrosporcon, " litros nesta viagem")
fimalgoritmo
