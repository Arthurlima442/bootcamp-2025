//
//  Exercicio.swift
//  Estruturas Condicionais - Arthur
//
//  Created by Barbara Brigolin on 27/04/25.
//

//1- Crie uma função que receba dois parâmetros (nota1: Double, nota2: Double) e retorne "Aluno aprovado” se a media das notas for maior ou igual a 7. Caso contrário retorne "Aluno reprovado"


func mediaAluno(nota1: Double, nota2: Double) -> String {
    let media = (nota1 + nota2) / 2
    if media >= 7 {
        return "Aluno aprovado"
    } else {
        return "Aluno reprovado"
    }
}

//var resultado = mediaAluno(nota1: 4.0, nota2: 8.0)
//print(resultado)



//2- Crie uma função "desconto" que receba um parâmetro (total: Double). Caso o total (parâmetro) seja menor que 100.0, dê 10% de desconto. Caso o valor esteja entre 100.0 e 200.0 dê 15% de desconto. Valores acima de 200.0 dê 20% de desconto. A função tem que ter um retorno do tipo Double que vai ser o total (parâmetro) com o desconto aplicado de acordo com as condições citadas.


func desconto(total: Double) -> Double {
    if total < 100.0 {
        return total * 0.9
    } else if total < 200.0 {
        return total * 0.85
    } else {
        return total * 0.80
    }
}
var valor = desconto(total: 210)
//print("O valor total ficou de R$ \(valor) reais")




//3- Crie uma função semáforo que receba uma parâmetro do tipo string. Se o valor recebido no parâmetro for vermelho, retorne "PARE", se for amarelo, retorne "ATENÇÃO", se for verde, "RETORNE"
//"SIGA EM FRENTE, se não, retorne "PARÂMETRO INVÁLIDO" caso o valor recebido seja diferente dos já citados.

func semaforo(cor: String) -> String {
    let newColor = cor.lowercased()
    
    if newColor == "vermelho" {
        return "PARE"
    } else if newColor == "amarelo" {
        return "ATENÇÃO"
    } else if newColor == "verde" {
        return "SIGA EM FRENTE"
    } else {
        return "PARAMETRO INVALIDO"
    }
}

//let sinaleira = semaforo(cor: "Amarelo")
//print("resposta sinaleira \(sinaleira)")



//4- Crie uma função que receba dois parâmetros (eFimDeSemana: Bool, tenhoDinheiro: Bool) e caso
//seja final de semana e você tenha dinheiro, print "VAMOS PASSEAR", caso contrário, print "VAMOS FICAR EM CASA"

func grana(eFimDeSemana: Bool, tenhoDinheiro: Bool) {
    if eFimDeSemana && tenhoDinheiro {
        print("VAMOS PASSEAR")
    } else {
        print("VAMOS FICAR EM CASA")
    }
}
//grana(eFimDeSemana: true, tenhoDinheiro: false)

//5- Crie uma função que receba dois parâmetros do tipo Double e caso o valor do 1° parâmetro seja maior que o valor do 2° parâmetro. Retorne "Bola", caso contrário, retorne "Banana"


func parametro(par1: Double, par2: Double) -> String {
    if par1 > par2 {
        return "BOLA"
    }else {
        return "banana"
    }
}
//let funcao = parametro(par1: 11.0, par2: 6)
//print("A resposta do parametro \(funcao) ")


//6- Crie uma função que receba um parâmetro (foiConvidado: Bool). Caso o valor seja true, print "Liberado para a festa" Caso contrário, print "Infelizmente você não foi convidado"


func festa(foiConvidado: Bool) {
    if foiConvidado {
        print("Liberado para a festa")
        
    } else {
        print("Infelizmente você não foi convidado")
    }
}
//festa(foiConvidado: false)


//7 - Implemente uma função que receba a idade de uma pessoa e determine se ela tem direito a entrada gratuita em um evento. Entrada gratuita é concedida para pessoas com menos de 5 anos ou mais de 65 anos.

func entraGratuita(idade: Int) {
    if idade < 5 || idade > 65 {
        print("entraGratuita")
    } else {
        print("tera que pagar a entrada")
    }
}

//entraGratuita(idade: 20)



//8 - Crie uma função que receba um score de crédito (tipo Int) de 0 a 1000 e retorne se a pessoa tem um "Bom crédito" (score acima de 700), "Crédito regular" (score entre 300 e 700) ou "Mau crédito" (abaixo de 300).


func cartao(scoreCredito: Int) -> String {
    if scoreCredito >= 1000 {
        return "bom credito"
    } else if scoreCredito >= 700 {
        return "credito regular"
    } else if scoreCredito >= 300 {
        return "baixo credito"
    } else {
        return "sem credito"
    }
}
// let limite = cartao(scoreCredito: 400)
//print("o seu score é \(limite)")


// ---------------------------------------------

func cartao2(scoreCredito: Int) -> String {
    if scoreCredito > 700 {
        return "bom credito"
    } else if scoreCredito > 300 {
        return "regular credito"
    } else {
        return "mau credito"
        
    }
}

//let limite2 = cartao2(scoreCredito: 299 )
//print("seu limite é: \(limite2)")


// --------------------------------------------

// 9 - Crie uma função que receba a temperatura de um ambiente (Double).
// Se for maior que 30, print "Muito quente". Se for menor que 15, print "Muito frio".
// Caso contrário, print "Temperatura agradável".

func grau(temperatura: Double) -> String {
    if temperatura > 30 {
        return "muito quente"
    } else if temperatura < 15 {
        return "Muito frio"
    } else {
        return "temperatura agradavel"
        
    }
}
// let grau2 = grau(temperatura: 25)
//print("A temperatura é: \(grau2)")


// 11 - Crie uma função que receba o nome de uma fruta (String).
// Se for "maçã", print "Você escolheu uma maçã".
// Se for "banana", print "Você escolheu uma banana".
// Caso contrário, print "Fruta não reconhecida".

func alimentos(fruta: String) {
    let newFruta = fruta.lowercased()
    
    if newFruta == "maçã" {
        print("Voce escolheu uma maçã")
    } else if newFruta == "banana" {
        print("Voce escolheu uma banana")
    } else {
        print("Fruta não reconhecida")
    }
}

//alimentos(fruta: "maçã")

// 12 - Crie uma função que receba um valor de compra (Double).
// Se for maior que 100, print "Você ganhou frete grátis",
// senão, print "Frete será cobrado à parte".


func compra(valorCompra: Double) {
    if valorCompra > 100 {
        print("Voce ganhou frete gratis")
    } else {
        print("Frete sera cobrado a parte")
    }
}
//compra(valorCompra:10)

// 13 - Crie uma função que receba um número de tentativas (Int).
// Se for maior que 3, retorne "Muitas tentativas".
// Caso contrário, retorne "Acesso permitido".

func numero1(tentativas: Int) {
    if tentativas > 3 {
        print("Muitas tentativas, acesso negado")
    } else {
        print("Acesso permitido")
    }
}

//numero1(tentativas: 78)

func numero(tentativas: Int) -> String {
    if tentativas > 3 {
        return "Muitas tentativas, acesso negado"
    } else {
        return "Acesso permitido"
    }
}

let numero2 = numero(tentativas: 4)
//print("\(numero2)")




// 14 - Crie uma função que receba dois valores: um saldo e um valor de saque.
// Se o saque for maior que o saldo, print "Saldo insuficiente".
// Caso contrário, print "Saque realizado com sucesso".




func valores(saldo: Double, saque: Double) {
    if saldo > saque {
        print("Saque realizado com sucesso")
    } else {
        print("Saldo insuficiente")
    }
}
//valores(saldo: 100, saque: 500)


func valores1(saldo: Double, saque: Double) -> String {
    if saldo > saque {
        return "Saque realizado com sucesso"
    } else {
        return "Saldo insuficiente"
    }
}

//let valores2 = valores1(saldo: 100, saque: 1000)
//print("\(valores2)")


// 15 - Crie uma função que receba a nota de um aluno (Double).
// Se for maior ou igual a 6.0, print "Aprovado",
// senão print "Reprovado".

func aluno(nota: Double) {
    if nota > 6.0 {
        print("Aprovado")
    } else {
        print("reprovado")
    }
}
//aluno(nota: 5.5)



func aluno1(nota: Double) -> String {
    if nota > 6.0 {
        return "Aprovado"
    } else {
        return "reprovado"
    }
}
//let aluno2 = aluno1(nota: 5.9)
//print("\(aluno2)")



// 16 - Crie uma função que receba a quantidade de horas trabalhadas no mês (Int).
// Se for maior que 160, print "Horas extras realizadas".
// Caso contrário, print "Dentro da jornada".


func quantidade(horasTrabalhadas: Int) {
    if horasTrabalhadas > 160 {
        print("Horas extras realizdas")
    } else {
        print("Dentro da jornada")
    }
}
//quantidade(horasTrabalhadas: 200)


func quantidade1(horasTrabalhadas: Int) -> String {
    if horasTrabalhadas > 160 {
        return "Horas extras realizadas"
    } else {
        return "Dentro da jornada"
    }
}

//let quantidade2 = quantidade1(horasTrabalhadas: 1000)
//print("\(quantidade2)")




// 17 - Crie uma função que receba dois números inteiros e retorne o maior entre eles.

func funcao(numero1: Int, numero2: Int) -> String {
    if numero1 > numero2 {
        return "Se o numero 1 for maior"
    } else if  numero1 == numero2 {
        return "Numeros iguais, nenhum é maior que o outro"
    } else {
        return "Se o numero2 for maior"
    }
}
//let funcao2 = funcao(numero1: 1, numero2: 2)
//print(funcao2)
//print("Resultado: \(funcao2)")



// 18 - Crie uma função que receba um valor booleano temIngresso.
// Se for true, print "Entrada liberada".
// Se for false, print "Entrada negada".

func funcao(temIngresso: Bool) {
    if temIngresso == true {
        print("Entrada Liberada")
    } else {
        print("Entrada Negada")
    }
}
//funcao(temIngresso: false)


// 19 - Crie uma função que receba um número inteiro representando a idade.
// Se a idade for maior ou igual a 18, print "Maior de idade". Caso contrário, print "Menor de idade".


func numero(idade: Int) -> String {
    if idade >= 18 {
        return "Maior de Idade"
    } else {
        return "Menor de Idade"
    }
}
//let funcao1 = numero(idade: 18)
//print(funcao1)


// 20 - Crie uma função que receba um número inteiro representando o mês (1 a 12).
// Se o número for 12, 1 ou 2, print "Inverno". Se for 3, 4 ou 5, print "Primavera".
// Se for 6, 7 ou 8, print "Verão". Caso contrário, print "Outono".

func funcao(mes: Int) {
    if mes == 12 || mes == 1 || mes == 2 {
        print("Inverno")
    } else if mes == 3 || mes == 4 || mes == 5 {
        print("Primavera")
    } else if mes == 6 || mes == 7 || mes == 8 {
        print("Verao")
    } else if mes == 9 || mes == 10 || mes == 11 {
        print("Outono")
    } else {
        print("Mes nao encontrado, voce esta selecionando um mes incorreto, opcao somente de 1 a 12")
    }
}

//funcao(mes: 8)


// 21 - Crie uma função que receba a quantidade de faltas (Int) de um aluno.
// Se tiver mais que 25 faltas, print "Reprovado por falta".
// Caso contrário, print "Presença adequada".

func aluno(faltas: Int) {
    if faltas > 25 {
        print("Reprovado por falta")
    } else {
        print("Presença adequada")
    }
}
//aluno(faltas: 44)

// 23 - Crie uma função que receba um valor do tipo String com o nome de um país.
// Se for "Brasil", print "País tropical". Se for "Canadá", print "País frio".
// Caso contrário, print "Informação não disponível".


func paises(pais: String) {
    if pais == "brasil" {
        print("Pais Tropical")
    } else if pais == "Canada" {
        print("Pais frio")
    } else {
        print("Informação nao disponivel")
    }
}
//paises(pais: "brasil")



// 24 - Crie uma função que receba um valor Double representando a velocidade de um carro.
// Se a velocidade for maior que 100.0, print "Acima da velocidade permitida".
// Caso contrário, print "Velocidade permitida".

func carro(velocidade: Double) {
    if velocidade > 100.0 {
        print("Acima da velocidade permitida")
    } else {
        print("Velocidade permitida")
    }
}
//carro(velocidade: 99.9)



// 25 - Crie uma função que receba o número de livros lidos no mês (Int).
// Se for maior ou igual a 5, print "Leitor assíduo".
// Se for entre 1 e 4, print "Bom começo". Se for 0, print "Tente ler algo este mês".


func lidos(livros: Int) {
    if livros >= 5 {
        print("Leitos Assiduo")
    } else if livros >= 1 {
        print("Bom Começo")
    } else {
        print("Tente ler algo este mês")
    }
}
//   lidos(livros: 3)
        

// 26 - Crie uma função que receba um valor Double representando a nota de um aluno.
// Se a nota for entre 9 e 10, print "Excelente". Entre 7 e 8.9, print "Bom".
// Entre 5 e 6.9, print "Regular". Abaixo de 5, print "Insuficiente".

func valor(nota: Double) {
    if nota > 10 {
        print("Nota nao existente")
    } else if nota >= 9  {
        print("Excelente")
    } else if nota >= 7 {
        print("Bom")
    } else if nota >= 5 {
        print("Regular")
    } else {
        print("Insuficiente")
    }
}
 
//valor(nota: 10)



// 27 - Crie uma função que receba dois números inteiros representando gols de dois times.
// Se forem iguais, print "Empate". Se o primeiro for maior, print "Time A venceu".
// Caso contrário, print "Time B venceu".

func gols(time1: Int, time2: Int) {
    if time1 == time2 {
        print("Empate")
    } else if time1 > time2 {
        print("Time 1 venceu")
    } else {
        print("Time 2 venceu")
    }
}
//gols(time1: 1, time2: 1)


// 28 - Crie uma função que receba uma senha (String).
// Se a senha for igual a "123456", print "Acesso permitido". Caso contrário, print "Senha incorreta".

func receba(senha: String) {
    if senha == "123456" {
        print("Acesso permitido")
    } else {
        print("Senha incorreta")
    }
}
receba(senha: "123456")
