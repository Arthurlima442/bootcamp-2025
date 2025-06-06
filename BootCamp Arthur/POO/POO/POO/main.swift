//
//  main.swift
//  POOBootcamp
//
//  Created by Caio Fabrini on 26/06/24.
//

import Foundation

//MARK: - Classe -> Modelo de um OBJETO!
// Atributo / Propriedades = caracteristicas de um objeto
// Ações = função / métodos
// CLASSE TRABALHA COM REFERENCE TYPE!!!

// Como criar uma classe?
// Utilizamos a palavra reservada 'class' e na sequencia seu nome sendo, SEMPRE COM A PRIMEIRA LETRA MAIUSCULA.

class Automovel {

  let cor: String = "Vermelho"
  let quantidadeDeEspelho: Int = 5
  let marca: String = "Ferrari"
  let tipoCombustivel: String = "Alcool"
  let tipoMotor: String = "AP"
  let potencia: Double = 2.0
  let conversivel: Bool = true
  var cavaloDePotencia: Int = 900

  func ligarCarro() {
    print("O carro da marca \(marca) está ligado")
  }

  func acenderFarois() {
    print("As luzes estão ligadas")
  }

  func detalheCompletoAutomovel() -> String {
    let texto: String = "O veiculo da marca: \(marca) tem o motor: \(tipoMotor) que utiliza o combustivel \(tipoCombustivel) e tem um total de \(cavaloDePotencia) cavalos de potencia"
    return texto
  }

}


// Criando objeto!
// Um objeto só ganha VIDA, QUANDO GERAMOS A SUA INSTANCIA QUE É O ABRE E FECHA PARENTESES ()
var ferrari: Automovel = Automovel()

//print(ferrari.cavaloDePotencia)
//print(ferrari.cor)
//print(ferrari.conversivel)
//print(ferrari.detalheCompletoAutomovel())

// Para alterar uma propriedade, você precisa chamar o objeto e atribuir um novo valor a propriedade
ferrari.cavaloDePotencia = 1200
//print(ferrari.cavaloDePotencia)

var uno: Automovel = Automovel()
uno.cavaloDePotencia = 1500
//print(uno.cavaloDePotencia)


//MARK: - Construtores
//MARK: Se caso NÃO TEM VALOR INICIAL, VOCÊ PRECISA PASSAR ELE NO INIT!!!!!!

class Pessoa {
  var nome: String
  var idade: Int
  var peso: Double
  var altura: Double

  // Método Construtor -> Ele é quem seta/informa os valores iniciais!!!
  init(nome: String, idade: Int, peso: Double, altura: Double) {
    self.nome = nome
    self.idade = idade
    self.peso = peso
    self.altura = altura
  }

}

// Neste exemplo, estamos gerando a instancia de uma forma diferente -> a instancia é gerada QUANDO preenchido todas as propriedades
// do metodo construtor
var caio: Pessoa = Pessoa(nome: "Caio", idade: 22, peso: 80, altura: 1.82)
//print(caio.idade)
//print(caio.peso)

var pedro: Pessoa = Pessoa(nome: "Pedro", idade: 45, peso: 92, altura: 1.77)
//print(pedro.idade)
//print(pedro.peso)

//MARK: Se caso NÃO TEM VALOR INICIAL, VOCÊ PRECISA PASSAR ELE NO INIT!!!!!!
class Celular {
  var valorPiCelular: Double = 3.14
  var tamanho: Double = 1.432432
  var cor: String
  var preco: Double
  var modelo: String

  init(modelo: String, preco: Double, cor: String) {
    self.modelo = modelo
    self.preco = preco
    self.cor = cor
  }
}

var iphone: Celular = Celular(modelo: "Iphone 15", preco: 8000, cor: "Preto")

//MARK: Se caso NÃO TEM VALOR INICIAL, VOCÊ PRECISA PASSAR ELE NO INIT!!!!!!
//MARK: O mesmo se encaixa para tipagens opcionais, POIS o opcional EXISTE ALGO DE INICIO -> QUE É O NIL! Com base nisso
//MARK: não é obrigado a passar ele no construtor. Mas caso queira, sem problemas!
class Bolo {

  var peso: Double
  var preco: Double
  var sabor: [String]
  var topoDeBolo: Bool? = nil

  init(peso: Double, preco: Double, sabor: [String]) {
    self.peso = peso
    self.preco = preco
    self.sabor = sabor
  }

  func adicionarSabor(sabor: String) {
    self.sabor.append(sabor)
  }
}

var boloAniversario: Bolo = Bolo(peso: 10, preco: 200, sabor: ["Chocolate", "Baunilha"])
var boloCasamento: Bolo = Bolo(peso: 50, preco: 2000, sabor: ["Chocolate", "Baunilha", "Maça"])

// MARK: - Exercicios Classe

// Exercício 1: Conta Poupança
// Objetivo: Desenvolver uma classe chamada 'ContaPoupanca' para gerenciar os depósitos em uma conta poupança de banco.
//
// Descrição:
// Propriedades:
// - saldo (Double): O saldo atual na conta.
// Construtor:
// - Inicialize o saldo.
// Métodos:
// - depositar(valor: Double): Adiciona(+) o valor especificado ao saldo atual. (saldo = saldo + valor especificado)
// - consultarSaldo() -> Double: Retorna o saldo atual da conta.

//   Para usar este método, você deve criar uma instância da classe, chamar este método e armazenar o valor retornado em uma variável. Em seguida, você pode imprimir esse valor.
// print("Saldo atual: R$\(saldoAtual)")


class ContaPoupanca {
    var saldo: Double
    
    init(saldo: Double) {
        self.saldo = saldo
    }
    
    func depositar(valor: Double) {
        saldo = saldo + valor
    }
    
    func sacar(valor: Double) {
        saldo = saldo - valor
    }
    
    func consultarSaldo() -> Double {
        return saldo
    }
}

var contaArthur: ContaPoupanca = ContaPoupanca(saldo: 1000)
contaArthur.depositar(valor: 500)
contaArthur.sacar(valor: 1100)
var resultadoArthur = contaArthur.consultarSaldo()
//print("O saldo da minha conta é: R$ \(resultadoArthur)")

var contaCaio: ContaPoupanca = ContaPoupanca(saldo: 100)
contaCaio.depositar(valor: 500)
var resultadoCaio = contaCaio.consultarSaldo()
//print(resultadoCaio)



// Exercício 2: Gerenciador de Filmes
// Objetivo: Desenvolver uma classe chamada 'Filme' para gerenciar informações sobre filmes em um acervo pessoal.
//
// Descrição:
// Propriedades:
// - titulo (String): O título do filme.
// - diretor (String): O diretor do filme.
// - ano (Int): O ano de lançamento do filme.
// Construtor:
// - Inicialize titulo, diretor e ano.
// Métodos:
// - exibirInfo() -> String: Retorna uma string com todas as informações do filme formatadas.

//   Para usar este método, crie uma instância da classe, chame o método e armazene a informação retornada em uma variável. Em seguida, imprima essa variável para visualizar os detalhes do filme.

class Filmes {
    var titulo: String
    var diretor: String
    var ano: Int
    
    init(titulo: String, diretor: String, ano: Int) {
        self.titulo = titulo
        self.diretor = diretor
        self.ano = ano
    }
    
    func exibirInfo() -> String {
        return "O titulo é: \(titulo)\n O diretor é: \(diretor)\n ano é: \(ano)"
    }
}

var filmes: Filmes = Filmes(titulo:"Thami", diretor:"Vanessa", ano: 1973)
let texto = filmes.exibirInfo()
print(filmes.exibirInfo())
print(texto)



// Exercício 3: Sistema de Registro de Alunos
// Objetivo: Criar uma classe chamada 'Aluno' para armazenar dados e calcular a média de notas de alunos em uma escola.
//
// Descrição:
// Propriedades:
// - nome (String): O nome do aluno.
// - notas (Array<Double>): Uma lista de notas do aluno.
// Construtor:
// - Inicialize nome e notas.
// Métodos:
// - calcularMedia() -> Double: Calcula e retorna a média das notas do aluno utilizando um laço de repetição para somar as notas.

//   Para utilizar este método, crie uma instância da classe, invoque o método para calcular a média, armazene esse valor em uma variável e imprima a média para visualizar.
// print("Média das notas de \(aluno.nome): \(media)")


class Aluno {
    
    var nome: String
    var notas: [Double]
    
    init(nome: String, notas: [Double]) {
        self.nome = nome
        self.notas = notas
    }
    
    func calcularMedia() -> Double {
        var somaValores: Double = 0
        
        
        for nota in notas {
            somaValores = nota + somaValores
        }
        
        return somaValores / Double(notas.count)
    }
}

var caio1: Aluno = Aluno(nome:"Caio", notas:[10.0,9.9,8.9])
var media: Double = caio1.calcularMedia()
print("Média das notas de \(caio1.nome): \(media)")


// MARK: - Exercícios Classe com Construtor

// Exercício 1: Produto em Estoque
// Objetivo: Criar uma classe chamada 'Produto' para controlar o estoque de produtos em uma loja.
//
// Descrição:
// Propriedades:
// - nome (String): o nome do produto.
// - preco (Double): o preço de uma unidade.
// - quantidade (Int): quantidade disponível no estoque.
//
// Construtor:
// - Inicialize todas as propriedades: nome, preço e quantidade.
//
// Métodos:
// - calcularValorTotal() -> Double: Retorna o valor total do estoque (preço × quantidade).
//
// Dica de uso:
// Crie uma instância da classe, invoque o método e imprima o valor retornado.
// print("Valor total: R$ \(valorTotal)")


class Produto {
    var nome: String
    var preco: Double
    var quantidade: Int
    
    init(nome: String, preco: Double, quantidade: Int) {
        self.nome = nome
        self.preco = preco
        self.quantidade = quantidade
    }
        func calcularValorTotal() -> Double {
            return preco * Double(quantidade)
        }
    
}
    var produto1: Produto = Produto(nome: "coka", preco: 2.5, quantidade: 100)
    var valor: Double = produto1.calcularValorTotal()
print("Valor total: R$ \(valor)")





// ---------------------------------------------------------------

// Exercício 2: Tarefa de Lista
// Objetivo: Criar uma classe chamada 'Tarefa' para representar tarefas de uma lista.
//
// Descrição:
// Propriedades:
// - titulo (String): o nome da tarefa.
// - concluida (Bool): se a tarefa já foi concluída ou não.
//
// Construtor:
// - Inicialize todas as propriedades.
//
// Métodos:
// - marcarComoConcluida(): Define a propriedade 'concluida' como true.
// - descricao() -> String: Retorna uma descrição da tarefa e seu status.
//
// Dica de uso:
// Crie a tarefa, marque como concluída e depois imprima a descrição:
// print(tarefa.descricao())


class Tarefa {
    let titulo: String
    var concluida: Bool
    
    init(titulo: String, concluida: Bool) {
        self.titulo = titulo
        self.concluida = concluida
    }
    func descricao() -> String {
        if concluida == true {
            return "\(titulo) - Concluída"
        } else {
            return "\(titulo) - Em aberto"
        }
    }
}

var cleaner: Tarefa = Tarefa(titulo: "Limpar o apartamento", concluida: true)
//print(Tarefa(titulo:"Limpar o apartamento" , concluida: true))







// ---------------------------------------------------------------

// Exercício 3: Livro na Biblioteca
// Objetivo: Criar uma classe chamada 'Livro' para acompanhar a leitura de um livro.
//
// Descrição:
// Propriedades:
// - titulo (String): título do livro.
// - autor (String): nome do autor.
// - paginasLidas (Int): número de páginas já lidas.
//
// Construtor:
// - Inicialize todas as propriedades.
//
// Métodos:
// - lerMais(paginas: Int): Soma o valor informado à quantidade de páginas lidas.
// - statusLeitura() -> String: Retorna uma frase com as informações do livro e progresso de leitura.
//
// Dica de uso:
// Chame o método 'lerMais', e depois imprima o retorno de 'statusLeitura'.
// print(livro.statusLeitura())


class Livro {
    let titulo: String
    var autor: String
    var paginasLidas: Int
    
    init(titulo: String, autor: String, paginasLidas: Int) {
        self.titulo = titulo
        self.autor = autor
        self.paginasLidas = paginasLidas
    }
    func lerMais(paginas: Int) {
       paginasLidas += paginas
    
    }
    func statusLeitura() -> String {
        return "Voce está lendo \(titulo) de \(autor), com \(paginasLidas) de páginas lidas."
    }
    
    
}
var livro: Livro = Livro(titulo: "Harry Potter", autor: "J.K", paginasLidas: 0)
livro.lerMais(paginas: 100)
print(livro.statusLeitura())





// MARK: - Exercícios Classe sem Construtor

// Exercício 4: Contador Simples
// Objetivo: Criar uma classe chamada 'Contador' que mantém o valor de um contador.
//
// Descrição:
// Propriedades:
// - valor (Int): o número atual do contador. Valor inicial deve ser 0.
//
// Métodos:
// - incrementar(): aumenta o valor em 1.
// - zerar(): define o valor como 0.
// - obterValor() -> Int: retorna o valor atual do contador.
//
// Dica de uso:
// Incremente o valor duas vezes e depois imprima o valor atual.
// print("Valor do contador: \(contador.obterValor())")


class Contador {
    var valor: Int = 0
    
    func incrementar() {
        valor += 10
    }
    func zerar() {
        valor = 1
    }
    func obterValor() -> Int {
        return valor
    }
}
let numero: Contador = Contador()
numero.incrementar()
numero.zerar()
print("O valor do contador: \(numero.obterValor())")




// ---------------------------------------------------------------

// Exercício 5: Playlist de Músicas
// Objetivo: Criar uma classe chamada 'Playlist' para adicionar músicas a uma lista.
//
// Descrição:
// Propriedades:
// - musicas ([String]): uma lista com o nome das músicas.
//
// Métodos:
// - adicionar(musica: String): adiciona uma nova música à lista.
// - listar() -> String: retorna uma string com todas as músicas separadas por vírgula.
//
// Dica de uso:
// Adicione pelo menos duas músicas e depois imprima o resultado de 'listar()'.
// print("Músicas: \(playlist.listar())")


class Playlist {
    var musicas = [String]()
    
    func adicionar(musica: String) {
        musicas.append(musica)
    }
    
    func listar() -> String {
        return "funk, rock, pop, jazz, samba "
    }
}


let playlist = Playlist()
playlist.adicionar(musica: "Faroeste Caboclo")
playlist.adicionar(musica: "MC CAIO ")
print("LISTA: \(playlist.listar())")
print("MUSICA:\(playlist.musicas)")




// ---------------------------------------------------------------

// Exercício 6: Timer de Sessão
// Objetivo: Criar uma classe chamada 'TimerSessao' para acompanhar o tempo de estudo/trabalho.
//
// Descrição:
// Propriedades:
// - minutos (Int): tempo total da sessão (começa em 0).
//
// Métodos:
// - adicionarMinutos(_ valor: Int): adiciona minutos à sessão.
// - tempoTotal() -> String: retorna uma frase com o tempo total.
//
// Dica de uso:
// Adicione minutos em dois momentos e imprima o tempo total.
// print(sessao.tempoTotal())


class TimeSessao {
    var minutos: Int = 0
    
    func adicionarMinutos(valor: Int) {
    minutos += valor
    }
    func tempoTotal() -> String {
        return "tempo total: \(minutos)"
    }
}
let sessao = TimeSessao()
sessao.adicionarMinutos(valor: 100)
sessao.adicionarMinutos(valor: 10)
print(sessao.tempoTotal())



// MARK: - Herança

// Classe PAI
class Animal {

  var nome: String
  var cor: String
  var peso: Double

  init(nome: String, cor: String, peso: Double) {
    self.nome = nome
    self.cor = cor
    self.peso = peso
  }
}

// Classe Filha(classe na qual HERDA as propriedades e metodos do pai)
// A classe filha ela contem TUDO OQUE O PAI (NO NOSSO EXEMPLO É A CLASSE ANIMAL) CONTEM, E + OQUE ELA JÁ CONTEM!
class Gato: Animal {

  var contemRabo: Bool = true
  var bebeLeite: Bool

  // toda a vez que você utilizar a palavra super, significa que você está chamando algo da classe PAI(no nosso exemplo, o init da classe Animal)
  init(bebeLeite: Bool, nome: String, cor: String, peso: Double) {
    self.bebeLeite = bebeLeite
    super.init(nome: nome, cor: cor, peso: peso)
  }

}

var bartolomeu: Gato = Gato(bebeLeite: true, nome: "Bartolomeu", cor: "Marrom", peso: 5)


// MARK: - Encapsulamento
// O encapsulamento é a prática de manter os detalhes de implementação de um objeto escondidos e seguros de acesso externo. Isso é feito usando modificadores de acesso para restringir o acesso às propriedades e métodos de uma classe.
// De criar variaveis/função get e set
// get -> pegar/acessar/consultar valor
// set -> setar novo valor/substituir o valor atual por um novo
// Tudo que você coloca sendo PRIVATE -> ele só existe dentro daquele bloco!!

class Computador {
  private var armazenamento: Int
  var processador: String
  var memoriaRam: Int

  init(processador: String, armazenamento: Int, memoriaRam: Int) {
    self.processador = processador
    self.armazenamento = armazenamento
    self.memoriaRam = memoriaRam
  }

  // função set
  func melhoriaArmazenamento(armazenamentoNovo: Int) {
    if validaNovoArmazenamento(novoArmazenamento: armazenamentoNovo) {
      armazenamento = armazenamentoNovo
    }
  }

  // função get
  func getArmazenamento() -> Int {
    return armazenamento
  }

  private func validaNovoArmazenamento(novoArmazenamento: Int) -> Bool {
    let eValido: Bool = armazenamento < novoArmazenamento
    return eValido
  }
}

var meuComputador: Computador = Computador(processador: "m1", armazenamento: 10, memoriaRam: 10)

// Quando declaramos uma função ou variaveis que sejam private, você não consegue chama-las ou atribuir um novo valor fora do bloco de codigo onde ela se mantem.
// meuComputador.armazenamento

// set
meuComputador.melhoriaArmazenamento(armazenamentoNovo: 20)

// get
//print(meuComputador.getArmazenamento())



// MARK: - Polimorfismo
// O polimorfismo permite que objetos de diferentes classes sejam tratados como objetos de uma classe comum. Em outras palavras, polimorfismo permite que um método tenha muitas "formas" diferentes, dependendo do objeto que o chama.
// override -> sobrescrever -> substituir


// O polimorfismo, é nada mais, nada menos que quando se tem uma classe FILHA e você quer utilizar o mesmo nome ou função da classe pai, você precisa colocar o override.
// Segue o exemplo:

class Veiculo {
  var velocidadeMaxima: Int

  init(velocidadeMaxima: Int) {
    self.velocidadeMaxima = velocidadeMaxima
  }

  func detalhesDoVeiculo() -> String {
    return "Veiculos com velocidade máxima de \(velocidadeMaxima) hm/h"
  }
}

class Carro: Veiculo {


  override func detalhesDoVeiculo() -> String {
    return "Carros com velocidade máxima de \(velocidadeMaxima) hm/h"
  }

// Neste exemplo estamos chamando a funcao da classe pai para que a gente possa aprender que com a palavra reservada super, ela chama SEMPRE TUDO OQUE É DA CLASSE PAI
//  override func detalhesDoVeiculo() -> String {
//    let detalhes: String = super.detalhesDoVeiculo()
//    return "\(detalhes) teste agora vai"
//  }
}

//var corolla: Carro = Carro(velocidadeMaxima: 10)
//print(corolla.detalhesDoVeiculo())


// MARK: - Struct
// Com a struct, não é obrigatorio deixar o construtor de forma explicita
// Struct NÃO ACEITA HERENÇA!!!
// Struct aceita apenas PROTOCOLO em sua hierarquia!!
// Struct trabalha com VALUE TYPE!!!

struct Documento {
  var quantidadeDeFolhas: Int
  var tipo: String

  init(quantidadeDeFolhas: Int, tipo: String) {
    self.quantidadeDeFolhas = quantidadeDeFolhas
    self.tipo = tipo
  }
}

var minhaCNH: Documento = Documento(quantidadeDeFolhas: 5, tipo: "muito cara")
var meuRG: Documento = Documento(quantidadeDeFolhas: 2, tipo: "documento importante")

//print("quantidadeDeFolhas CNH: \(minhaCNH.quantidadeDeFolhas)")
//print("quantidadeDeFolhas RH: \(meuRG.quantidadeDeFolhas)")
//
//print("---------------------------------------------------------")

minhaCNH = meuRG

//print("quantidadeDeFolhas CNH: \(minhaCNH.quantidadeDeFolhas)")
//print("quantidadeDeFolhas RH: \(meuRG.quantidadeDeFolhas)")
//
//print("---------------------------------------------------------")

minhaCNH.quantidadeDeFolhas = 50
meuRG.quantidadeDeFolhas = 100

//print("quantidadeDeFolhas CNH: \(minhaCNH.quantidadeDeFolhas)")
//print("quantidadeDeFolhas RH: \(meuRG.quantidadeDeFolhas)")


// struct

//quantidadeDeFolhas CNH: 5
//quantidadeDeFolhas RH: 2
//---------------------------------------------------------
//quantidadeDeFolhas CNH: 2
//quantidadeDeFolhas RH: 2
//---------------------------------------------------------
//quantidadeDeFolhas CNH: 50
//quantidadeDeFolhas RH: 100

// class

//quantidadeDeFolhas CNH: 5
//quantidadeDeFolhas RH: 2
//---------------------------------------------------------
//quantidadeDeFolhas CNH: 2
//quantidadeDeFolhas RH: 2
//---------------------------------------------------------
//quantidadeDeFolhas CNH: 100
//quantidadeDeFolhas RH: 100


// MARK: - Inicializadores / Construtores

class Casa {

  var numeroDeQuartos: Int
  var localizacao: String

  // Designated Initializer
  // Inicializador principal que deve configurar todas as propriedades.
  init(numeroDeQuartos: Int, localizacao: String) {
    self.numeroDeQuartos = numeroDeQuartos
    self.localizacao = localizacao
  }

  // Convenience Initializer
  // Inicializador secundário que fornece valores padrão ou simplifica a criação da instância.
  convenience init() {
    self.init(numeroDeQuartos: 5, localizacao: "guaruja")
  }

  convenience init(numeroDeQuartos: Int) {
    self.init(numeroDeQuartos: numeroDeQuartos, localizacao: "guaruja")
  }

  // Failable Initializer
  // Inicializador que pode falhar e retornar nil se as condições não forem atendidas.
  init?(numeroDeQuartos: Int, localizacao: String, validaQuartos: Bool) {
    if validaQuartos == false || numeroDeQuartos < 2 {
      return nil
    }
    self.numeroDeQuartos = numeroDeQuartos
    self.localizacao = localizacao
  }

  // Required Initializer
  // Exige que todas as subclasses implementem este inicializador.
  required init(localizacao: String) {
    self.localizacao = localizacao
    self.numeroDeQuartos = 10
  }
}

var minhaCasa: Casa = Casa(numeroDeQuartos: 10, localizacao: "nuporanga")
var minhaCasa2: Casa = Casa()
var minhaCasa3: Casa = Casa(numeroDeQuartos: 20)
var minhaCasa4: Casa = Casa(numeroDeQuartos: 0, localizacao: "", validaQuartos: false) ?? Casa()


class CasaDePraia: Casa {

  var distanciaDaPraia: Int

  init(distanciaDaPraia: Int) {
    self.distanciaDaPraia = distanciaDaPraia
    super.init(numeroDeQuartos: 10, localizacao: "sp")
  }
  
  required init(localizacao: String) {
    self.distanciaDaPraia = 1000
    super.init(numeroDeQuartos: 100, localizacao: localizacao)
  }
}

//var minhaCasaDePraia: CasaDePraia = CasaDePraia(distanciaDaPraia: 100)
var minhaCasaDePraia2: CasaDePraia = CasaDePraia(localizacao: "sp")

















