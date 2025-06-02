//
//  main.swift
//  Coleções e Estruturas de repetições
//
//  Created by Barbara Brigolin on 24/04/25.
//

//MARK: Coleções -> tipagens que armazenam nenhum ou varios valores

//MARK: Ponto importante
// Uma tipagem simples, ela armazena apenas um unico valor!! Já um dicionario/array podem armazenar nenhum ou muitooos valores!!!

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
var diasDaSemana: [String] = ["Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado", "Domingo"]

let nome: String = "Meu nome é Caio"
var listaNotas: [Double] = [10, 5.5, 9.8, 3, 2, 10, 8.5]
let livrosQueLi: [String] = ["Diario de um banana", "Diario de um banana 2"]
var listaNomes: [String] = ["Caio", "Gabriela", "Giulia", "Ramon"]


// Para acessar um valor de um array utilizamos o INDEX DO ARRAY

var dia: String = diasDaSemana[5]
//print("Hoje é: \(dia)")


var nota: Double = listaNotas[1]
//print("Sua nota é: \(nota)")


// Para adicionar um novo item no seu array utilizamos a propriedade append
// OBS: Para adicionar um item no seu array ele DEVE SER DA MESMA TIPAGEM DO ARRAY!!!!!
// Toda a vez que utilizamos o append, o novo elemento é adicionado sempre ao final da lista

listaNomes.append("Thiago")
listaNomes.append("Fabio")
listaNomes.append("Gabriela")
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


// MARK: - Dicionario -> chave e valor
// O dicionario trabalha como LISTA, porem diferente do array ele NÃO É ORDENADO!!
// O dicionario NÃO IMPORTA COM A ORDEM!
// A referencia do array é o index(posição), já o dicionário é a chave!

// Caracteristicas de um dicionario:
// Ele trabalha com chave e valor
// Para criar um dicionario colocamos entre colchetes sua chave e sua tipagem(valor do dicionario) Ex: [chave/key: valor/value]
// O dicionario pode ter qualquer tipagem de valor, podendo ser double, float, int, string, bool, etc...
// Toda a vez que vocês forem utilizar um dicionario sempre deve utilizar os dois pontos para separar oque é chave de valor
// Sua chave, jamais se repete

//                                key   value   key        value  key       value
var altura: [String: Double] = ["Caio": 1.82, "Guilherme": 1.75, "Marcello": 1.70]
//print(altura)


// para adicionar/atualizar um item do dicionario utilizamos a propriedade updateValue
// quando utilizamos o updateValue ele SEMPRE vai validar se a chave que você informou já existe,
// se sim, atualiza o valor dela, caso contrario ele cria um novo item!

altura.updateValue(1.90, forKey: "Ramon")
altura.updateValue(1.90, forKey: "Caio2")

//print(altura)


// Para acessar um valor de um dicionario, utilizamos sua chave
//print(altura["Guilherme"] ?? 0)

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
var alturaExemplo: [String: Double] = ["Caio": 1.82, "Guilherme": 1.75, "Marcello": 1.70]
//print(alturaExemplo)


// para adicionar/atualizar um item do dicionario utilizamos a propriedade updateValue
// quando utilizamos o updateValue ele SEMPRE vai validar se a chave que você informou já existe,
// se sim, atualiza o valor dela, caso contrario ele cria um novo item!

alturaExemplo.updateValue(1.90, forKey: "Ramon")
alturaExemplo.updateValue(1.90, forKey: "Caio2")

//print(alturaExemplo)


// Para acessar um valor de um dicionario, utilizamos sua chave
let minhaAltura: Double = alturaExemplo["Guilherme"] ?? 0
//print(minhaAltura)

// Remover um item de um dicionario

// remover todos os itens
//altura.removeAll()

// Remover chave especifica
//altura.removeValue(forKey: "Guilherme2")
//print(altura)

//MARK: - Exercicios Array e Dicionário

//Exercício 1: Arrays
//Crie um array contendo os nomes de três aplicativos iOS populares. Imprima o nome do segundo aplicativo na lista.
                        

let ios: [String] = ["Spotify", "Instagram", "WhatsApp"]
print(ios[1])



//Exercício 2: Dicionários
//Crie um dicionário com os nomes de três pessoas como chaves e seus sobrenomes como valores. Imprima um de seus valores.

let nomes: [String: String] = ["Arthur": "Lima", "Caio": "Fabrini", "Thami": "Lopes"]
print(nomes["Arthuhnhnhnhr"] ?? "nn achou")




//Exercício 3: Manipulação de Arrays
//Crie um array contendo 10 números inteiros. Adicione um número inteiro à lista e, em seguida, remova o segundo elemento. Imprima o conteúdo final do array.

var numeros: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numeros.append(11)
numeros.remove(at: 0)
//print(numeros)


//Exercício 4: Acesso a Valores
//Crie um dicionário com os nomes de três frutas e a quantidade que você possui de cada uma. Imprima quantas unidades de uma fruta de sua escolha você possui.

let fruta: [String: Int] = ["banana": 2, "maça": 1, "laranja": 3]
//print(fruta["banana"] ?? 0)

// Exercio


// Array

// Crie uma lista e print todo o array

//let lista: [String] = ["Arthur", "Breno", "Cássia"]

//print(lista[1])

// Crie uma lista e faça o print da primeira posição

//let macBook: [String] = ["MacBook M4", "MacBook M4 Pro", "MacBook M4 Max"]

//let Mac: String = macBook[0]
//print("Vou compra o: \(Mac)")

// Crie uma lista e adicione um item

//var listaDeAnimais: [String] = ["Gato", "Onça", "Arara"]



// Crie uma lista e remova o ultimo item

var carretilha: [String] = ["shimano", "penn", "alguma outra"]
carretilha.removeLast()
//print(carretilha)

// Crie uma lista e remova todos os itens

var morinete1: [String] = ["penn","nao sei", "shimano"]
morinete1.removeAll()
//print(morinete1)

// Dicionario

// Crie um dicionario e print ele todo

let nomes1: [String: Int] = ["Arthur": 23, "Caio": 23, "Thami": 23]
//print(nomes1) ?? "nn achou"


// Crie um dicionario e faça o print da primeira chave

let nomes2: [String : String] = ["arthur": "lima", "caio": "fabrini", "davi": "lima"]
//print(nomes2["arthur"] ?? "nao achou")


// Crie um dicionario e adicione um item e faça o print de todo o dicionario para garantir


var nomes3: [String: String] = ["arthur": "lima", "caio": "fabrini"]
nomes3.updateValue("lima", forKey: "davi")
//print(nomes3)

// Crie um dicionario e remova um item especifico e faça o print de todo o dicionario para garantir
var nome4: [String:Int] = ["bruce": 12, "ayron": 11, "luke": 13]
nomes3.removeValue(forKey: "bruce")
//print(nomes3)


// Crie um dicionario e remova todos os itens e faça o print de todo o dicionario para garantir

var comida: [String : String] = ["Japones": "Amo", "Pizza": "Gosto", "Cless": "Regular"]
comida.removeAll()
//print(comida)



// Crie um dicionario e atualize um item e faça o print de todo o dicionario para garantir

var comida2: [String: String] = ["Japones": "Amo", "Pizza": "Gosto"]
comida2.updateValue("Nao gosto", forKey: "Pizza")
//print(comida2)



// MARK: - Estruturas de Repetição - 3 meios
// Estruturas de repetição são usadas para executar um bloco de código repetidamente até que uma condição específica seja atendida. Isso é útil para tarefas como processar coleções de dados ou repetir operações até que uma condição de parada seja alcançada.

// MARK: While (Enquanto)
// A estrutura de repetição 'while' executa um conjunto de instruções repetidamente, enquanto a condição fornecida é verdadeira. É ideal quando o número de iterações não é conhecido antes do loop iniciar.

// O While a primeira coisa que ele faz é verificar se a condição que está entre a palavra while e a chave é verdadeira. Se a condição for verdadeira ele entra no bloco de codigo e depois volta a repetir. Ele encerra a repetição apenas no momento em que a validação se torna falsa


// MARK: Diferença entre While e Repeat
// No while ele verifica primeiro antes de execultar qualquer coisa!
// No repeat ele EXECUTA PRIMEIRO e DEPOIS ele verifica se tem que repetir ou não


//var idade: Int = 10

//while idade <= 10 {
//  print("A idade atual é de: \(idade)")
//  idade = idade + 1
//}

//print("final da execução")

// MARK: Repeat-While
// O 'repeat-while' é uma variação do loop 'while' que executa o bloco de código uma vez antes de verificar a condição no final do bloco.
// O repeat é igual o While, porem ele apriori executa e DEPOIS verifica se tem que repetir de novo

//var indexRepeat: Int = 100

//repeat {
//  print("Valor: \(indexRepeat)")
//   += significa (indexRepeat = indexRepeat + 1)
//   indexRepeat = indexRepeat + 1
//  indexRepeat += 1
//} while indexRepeat <= 110


// MARK: For-In
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

//var listaAnotacoes: [String] = ["Abastecer carro", "Pagar conta de energia", "Responder alunos"]

//for (index, value) in listaAnotacoes.enumerated() {
//  print("A posição é: \(index) e a sua anotação é: \(value)")
//}

for (index, anotacao) in listaAnotacoes.enumerated() {
    if anotacao == "Abastecer carro" {
        listaAnotacoes.remove(at: index)
    }
}

print(listaAnotacoes)

// Temos 2 parametros:
// remover -> esse parametro é oque você quer REMOVER DA LISTA
// lista -> um array de strings
// e a funcao RETORNA UM ARRAY

func removerItem(remover: String, lista: [String]) -> [String] {
    // aqui criamos uma COPIA do parametro lista, pois quando formos remover o item da lista, não pode ser let, deve ser uma var, e o parametro por default é let (lista == let)
    var myList = lista
    // agora vamos percorrer a lista e vamos ter acesso o INDEX (POSIÇÃO) e o VALUE (QUE É O VALOR DE CADA POSIÇÃO)
    for (index, value) in myList.enumerated() {
        // agora vamos verificar CADA VALOR DE CADA POSIÇÃO("Arthur", "Barbara", "Caio"]) para ver se é IGUAL ao que queremos REMOVER!
        // se sim, remove o respectivo item
        if remover == value {
            myList.remove(at: index)
//            myList[index] = "Canjica"
        }
    }
    
    // por fim depois de ter feito toda a varredura da lista, retornamos então a myList
    return myList
}

let listRemove = removerItem(remover: "Caio", lista: ["Arthur", "Barbara", "Caio"])
print(listRemove)

//    // utilizamos o break no caso de existir apenas um unico item na lista. Com isso quando entrar na validação ele não precisa mais repetir para buscar outro valor
//    // pois sabemos que ele não vai encontrar. Sendo assim, o break anula o loop
//       break
//  }
//}

//print(listaAnotacoes)

// Como reverter o array
//print(listaAnotacoes)  // ["Colocar ração para o Ayron", "Pagar conta de energia", "Responder alunos", "Conferir pneus"]
//listaAnotacoes.reverse()
//print(listaAnotacoes) //  ["Conferir pneus", "Responder alunos", "Pagar conta de energia", "Colocar ração para o Ayron"]


// MARK: - Exercicios ------------------------

// MARK: Exercício 1: Crie uma lista vazia e depois adicione 3 itens. Por fim, utilize o for para printar esses elementos

var lista: [String] = []
lista.append("caio")
lista.append("matheus")
lista.append("jorge")

//for item in lista {
//    print(item)
//}

// MARK: Exercício 2: Crie um dicionario String:String com 3 itens. Imprima utilizando o for a chave de cada um deles.

let comidas: [String: String] = ["hamburger": "bom", "japonese": "otimo", "pizza": "gostoso"]
//for foods in comidas.keys {
//    print(foods)
//}


// MARK: Exercício 3: Adicionar chave e valor em um dicionário e imprimir ambos utilizando o for print("\(chave): \(valor)")
var listaCarro: [String: Double] = [:]
//listaCarro.updateValue(80000, forKey: "Fusion")


//for (key, value) in listaCarro {
//    print("Meu carro é um \(key) e o seu preço é R$ \(value.formatted())")
//}


// MARK: Exercício 4: Crie um array com 3 itens. Percorra o array utilizando o for, e realize o print de cada item. Realize o reverso do array que você criou.

var listaDeAnimais: [String] = ["Gato", "Cachorro", "Onça"]
 
//for animal in listaDeAnimais {
//    print(animal)
//}

listaDeAnimais.reverse()

//for animal in listaDeAnimais {
//    print(animal)
//}


// MARK: Exercício 5: Crie um array de números inteiros. Utilizando o for, percorra o array e soma cada valor. Por fim, imprima o valor total de todos os números



var numbers: [Int] = [1, 2, 3, 4, 5]
var total: Int = 0

for number in numbers {
    total += number
}

print(total)



