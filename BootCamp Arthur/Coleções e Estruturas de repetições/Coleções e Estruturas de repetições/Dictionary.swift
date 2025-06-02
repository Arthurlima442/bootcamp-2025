//
//  Dictionary.swift
//  Coleções e Estruturas de repetições
//
//  Created by Barbara Brigolin on 27/04/25.
//

// MARK: - Dicionario -> chave e valor
// O dicionario trabalha como LISTA, porem diferente do array ele NÃO É ORDENADO!!
// O dicionario NÃO IMPORTA COM A ORDEM!
// A referencia do array é o index(posição), já o dicionário é a chave!

// Caracteristicas de um dicionario:
// Ele trabalha com chave e valor
// Para criar um dicionario colocamos entre colchetes sua chave e sua tipagem(valor do dicionario) Ex: [chave/key: valor/value]
// O dicionario pode ter qualquer tipagem de valor, podendo ser double, float, int, string, bool, etc...
// Toda a vez que vocês forem utilizar um dicionario sempre deve utilizar os dois pontos para separar oque é chave de valor
// Sua chave, jamais se repete!!

//            key     value      key   value   key        value  key       value
//var alturaExemplo: [String: Double] = ["Caio": 1.82, "Guilherme": 1.75, "Marcello": 1.70]
//print(alturaExemplo)


// para adicionar/atualizar um item do dicionario utilizamos a propriedade updateValue
// quando utilizamos o updateValue ele SEMPRE vai validar se a chave que você informou já existe,
// se sim, atualiza o valor dela, caso contrario ele cria um novo item!

//alturaExemplo.updateValue(1.90, forKey: "Ramon")
//alturaExemplo.updateValue(1.90, forKey: "Caio2")

//print(alturaExemplo)


// Para acessar um valor de um dicionario, utilizamos sua chave
//let minhaAltura: Double = alturaExemplo["Guilherme"] ?? 0
//print(minhaAltura)

// Remover um item de um dicionario

// MARK: - Remover todos os itens
//altura.removeAll()

// MARK: - Remover chave especifica
//altura.removeValue(forKey: "Guilherme2")
//print(altura)


// MARK: - For-In
// O loop 'for-in' itera sobre uma sequência, como um intervalo de números, e executa um conjunto de instruções para cada elemento na sequência.

//for value in 100...105 {
//  print("O valor atual é de: \(value)")
//}


// MARK: - Uso de For-In com Arrays/ Dicionario
// Arrays em Swift são coleções ordenadas de elementos. O loop 'for-in' permite iterar sobre cada elemento de um array de maneira simples e direta.

//var testAnotation: [String] = ["Abastecer carro", "Colocar ração para o Ayron", "Pagar conta de energia", "Responder alunos"]
//
//for anotacao in testAnotation {
//  print("Minha anotação é: \(anotacao)")
//}

//let listaAlunos: [String: Double] = ["Caio": 7.5, "Jorge": 4, "Matheus": 9, "Pedro": 2, "Manuela": 5, "Fred": 8,]
//var listaNomeAlunosAprovados: [String] = []

//for aluno in listaAlunos {
//     nota   for maior ou igual a 7
//  if aluno.value >= 7 {
//    listaNomeAlunosAprovados.append(aluno.key)
//  }
//}

//print(listaNomeAlunosAprovados)

// MARK: Usando Índices e Elementos no Array
// Usando a função 'enumerated()' para acessar tanto o índice quanto o valor de cada elemento do array.
// 'enumerated()' transforma o array em uma sequência de pares (índice, valor).

var listaAnotacoes: [String] = ["Abastecer carro", "Pagar conta de energia", "Responder alunos"]

//for (index, value) in listaAnotacoes.enumerated() {
//  print("A posição é: \(index) e a sua anotação é: \(value)")
//}
