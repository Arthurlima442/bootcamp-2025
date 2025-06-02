//
//  Test.swift
//  Coleções e Estruturas de repetições
//
//  Created by Barbara Brigolin on 27/04/25.
//


//MARK: - Array -> lista de valores de uma devida tipagem

// Criação de um array:
// var listaNome: -> colocamos a nossa tipagem sempre estre os colchetes [Tipo da tipagem]
// Quando trabalhamos com array, o valor SEMPRE deve estar entre colchetes = ["Caio", "Gabriela", "Giulia", "Ramon"]
// Qual a tipagem que um array pode ter? QUALQUER TIPAGEM!!!!
// Quantos valores pode conter em um array? NÃO TEMOS LIMITE!!!

// Caracteristicas de um array:
// Um array trabalha de forma ORDENADA!!!
// Suas posições não se alteram
// Por trabalhar de forma ordenada, o array tem algo que chamamos de INDEX, que nada mais é que suas posições
// Na programação a primeira posição não é o 1 e sim o 0!!

//                                0         1        2          3       4         5         6
//var diasDaSemana: [String] = ["Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado", "Domingo"]
//
//let nome: String = "Meu nome é Caio"
//var listaNotas: [Double] = [10, 5.5, 9.8, 3, 2, 10, 8.5]
//let livrosQueLi: [String] = ["Diario de um banana", "Diario de um banana 2"]
//var listaNomes: [String] = ["Caio", "Gabriela", "Giulia", "Ramon"]


// Para acessar um valor de um array utilizamos o INDEX DO ARRAY

//var dia: String = diasDaSemana[5]
//print("Hoje é: \(dia)")


//var nota: Double = listaNotas[1]
//print("Sua nota é: \(nota)")


// Para adicionar um novo item no seu array utilizamos a propriedade append
// OBS: Para adicionar um item no seu array ele DEVE SER DA MESMA TIPAGEM DO ARRAY!!!!!
// Toda a vez que utilizamos o append, o novo elemento é adicionado sempre ao final da lista

//listaNomes.append("Thiago")
//listaNomes.append("Fabio")
//listaNomes.append("Gabriela")
//print(listaNomes)

//listaNotas.append(1.5)
//print(listaNotas)

// Para deletar um elemento do array utilizamos a propriedade remove, e temos 4 formas SIMPLES:

// Remove TODOS os itens do array
//listaNomes.removeAll()
//print(listaNomes)

// Remove o ultimo item do array
//listaNomes.removeLast()
//print(listaNomes)

// Remove o primeiro item do array
//listaNomes.removeFirst()
//print(listaNomes)

// Remove uma posição ESPECIFICA do array
//listaNomes.remove(at: 5)
//print(listaNomes)

// Verificar quantos ITENS EXISTE EM UM ARRAY
//print(listaNomes.count)
