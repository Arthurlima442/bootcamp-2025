//
//  exercicios.swift
//  Coleções e Estruturas de repetições
//
//  Created by Barbara Brigolin on 27/04/25.
//

import Foundation


                        

//let ios: [String] = ["Spotify", "Instagram", "WhatsApp"]
//print(ios[1])



//Exercício 2: Dicionários
//Crie um dicionário com os nomes de três pessoas como chaves e seus sobrenomes como valores. Imprima um de seus valores.

//let nomes: [String: String] = ["Arthur": "Lima", "Caio": "Fabrini", "Thami": "Lopes"]
//print(nomes["Arthuhnhnhnhr"] ?? "nn achou")




//Exercício 3: Manipulação de Arrays
//Crie um array contendo 10 números inteiros. Adicione um número inteiro à lista e, em seguida, remova o segundo elemento. Imprima o conteúdo final do array.

//var numeros: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//numeros.append(11)
//numeros.remove(at: 0)
//print(numeros)


//Exercício 4: Acesso a Valores
//Crie um dicionário com os nomes de três frutas e a quantidade que você possui de cada uma. Imprima quantas unidades de uma fruta de sua escolha você possui.

//let fruta: [String: Int] = ["banana": 2, "maça": 1, "laranja": 3]
//print(fruta["banana"] ?? 0)

// Exercio


// Array

// Crie uma lista e print todo o array

//let lista: [String] = ["Arthur", "Breno", "Cássia"]

//print(lista[1])

// Crie uma lista e faça o print da primeira posição

//let macBook: [String] = ["MacBook M4", "MacBook M4 Pro", "MacBook M4 Max"]
//
//let Mac: String = macBook[0]
//print("Vou compra o: \(Mac)")

// Crie uma lista e adicione um item

//var listaDeAnimais: [String] = ["Gato", "Onça", "Arara"]
//
//listaDeAnimais.append("Lobo")

//print(listaDeAnimais[3])

// Crie uma lista e remova o ultimo item

//var carretilha: [String] = ["shimano", "penn", "alguma outra"]
//carretilha.removeLast()
//print(carretilha)

// Crie uma lista e remova todos os itens

//var morinete1: [String] = ["penn","nao sei", "shimano"]
//morinete1.removeAll()
//print(morinete1)

// Dicionario

// Crie um dicionario e print ele todo

//let nomes1: [String: Int] = ["Arthur": 23, "Caio": 23, "Thami": 23]
//print(nomes1) ?? "nn achou"


// Crie um dicionario e faça o print da primeira chave

//let nomes2: [String : String] = ["arthur": "lima", "caio": "fabrini", "davi": "lima"]
//print(nomes2["arthur"] ?? "nao achou")


// Crie um dicionario e adicione um item e faça o print de todo o dicionario para garantir


//var nomes3: [String: String] = ["arthur": "lima", "caio": "fabrini"]
//nomes3.updateValue("lima", forKey: "davi")
//print(nomes3)

// Crie um dicionario e remova um item especifico e faça o print de todo o dicionario para garantir
//var nome4: [String:Int] = ["bruce": 12, "ayron": 11, "luke": 13]
//nomes3.removeValue(forKey: "bruce")
//print(nomes3)


// Crie um dicionario e remova todos os itens e faça o print de todo o dicionario para garantir

//var comida: [String : String] = ["Japones": "Amo", "Pizza": "Gosto", "Cless": "Regular"]
//comida.removeAll()
//print(comida)



// Crie um dicionario e atualize um item e faça o print de todo o dicionario para garantir

//var comida2: [String: String] = ["Japones": "Amo", "Pizza": "Gosto"]
//comida2.updateValue("Nao gosto", forKey: "Pizza")
//print(comida2)
