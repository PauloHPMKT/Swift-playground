import UIKit
/*
 Introdução a linguagem Swift
 
 Declaração de variáveis no swift
 var - representa uma variável que pode ser alterada
 let - representa uma variável que não pode ser alterada (const)
 
 Tipos de dados
 String - Conjunto de caracteres
 Character - Um único de caracter
 Int
 Double
 Bool
 */

var name = "Paulo Sergio"
var age = 32
print(name, age)

//interpolacao
print("O meu nome é \(name) e eu tenho \(age) anos de idade")

//Como fazer a conversão de um valor numero visto que o Swift é fortemente tipado?
var myNumber = 22
myNumber = Int(22.7) // faz que os valores sejam arrendodados para baixo, ou seja... 22
print(myNumber)

var renderCoeficient = 9.5
var getDisaprovedHistory = false
var shift: Character = "D"

// é utilizando para nomear de forma mais consisa a declaração de suas variáveis
typealias Students = String
var aluno1: Students = "João"
var aluno2: Students = "Ana"

/*
 Toda variável declarada com seu valor de forma explicita adquire seu tipo de
 acordo com o seu valor repassado. Caso seja implicito é preciso declarar o tipo
 */
var isBooleanValue: Bool
isBooleanValue = true


//Dessafio curso Alura
var firstLetterName: Character = "P"
var customerName = "Paulo Sergio"
var nickname = "Devmais"
var customerAge = 32
var height = "\(1.70)cm"
var isSwiftLike = true
var loveSwift: String

if isSwiftLike {
    loveSwift = "sim"
} else {
    loveSwift = "não"
}

print("A primeira letra do nome do cliente é \(firstLetterName), seu nome é: \(customerName), seu apelido: \(nickname)")
print("Sua idade é: \(customerAge), sua altura é: \(height) e \(loveSwift), ele \(loveSwift) ama Swift!")

// Para realizar concatenações de variáveis
print("A primeira letra do nome do cliente é \(firstLetterName), seu nome é: \(customerName), seu apelido: \(nickname)"
      + "Sua idade é: \(customerAge), sua altura é: \(height) e \(loveSwift), ele \(loveSwift) ama Swift!")

// realizando calculos utilizando a linguagem Swift
10 + 2
10 - 2
8 * 2
10 / 2
/*
 Quando dividimos numeros inteiros e seu resultado retorna um decimal observamos
 que pela regra da linguagem ele retornará um inteiro
 ex: 5 / 2 = 2
 Para que essa operação retorne um decimal temos algumas abordagens
 */
5.0 / 2
Double(5) / 2 // Essa abordagem converte o número
5 % 2 // significa o módulo ou resto das divisões
var number1 = 10
var number2 = 20
var sum = number1 + number2

number1 += 2 // somando o valor de number1 com 2

//Desafio curso Alura
var celsius = 29
var fahrenheit = (celsius * 9/5) + 32
print("Em Fahrenheit a temperatura é: \(fahrenheit) F")

// criando um array
var vazio: [Int] = []
var idades = [2, 13, 24, 10, 8, 22, 24]

//Laço de repetiçao for
for i in 1...10 {
    print(i)
}
// Se por acaso eu declarar i e não utiliza-la o Xcode retornará um erro de variável não utilizada
// então eu posso utilizar o simbolo "_" para ignorar essa variável
for _ in 1...10 {
    print("Apenas para fazer um teste")
}

var count = 1
while count <= 10 {
    print("Aprendendo a usar o while")
    count+=1
}

// A sua diferença para o while convencional é que ele imprime primeiro um resultado e depois faz uma verificação
repeat {
    print("Aprendendo a usar o repeat while")
} while count <= 10

var sumValue = 0
for i in 1...10 {
    sumValue += i
    print("O resultado da soma é: \(sumValue)")
}

// Testando dois tipos de controladores de fluxos e loops, break continue
// Exercicio Alura
var sum1 = 1
var count1 = 0

repeat {
    sum1 += 3
    count1 += 1
} while(count < 5)

print(sum1) // resultado 16, mediante a quantidade de vezes que o count é incrementado

var newCount = 1

while newCount <= 10 {
    if newCount == 5 {
        break
    }
    print(newCount)
    newCount += 1
}

var otherCount = 1

while otherCount <= 10 {
    otherCount += 1
    if otherCount == 5 {
        // continue faz que se a condição chegar em 5 ele force a continuidade do loop
        continue
    }
    print("other count", otherCount)
}


// classes
class Pessoa {
    var name: String?
    var email: String?
    var age: Int?
    
    /* 
     Tornando todos os parametros opcionais é possível criar um objeto Pessoa
     com valores nil (null), para além disso basta adicionar um construtor
     vazio conforme o exemplo abaixo.
    */
    init(){}
    
    init(name: String, email: String, age: Int) {
        self.name = name
        self.email = email
        self.age = age
    }
}

let pessoa1 = Pessoa(name: "Paulo", email: "paulo@example.com", age: 32)
let pessoa2 = Pessoa()

pessoa1.name = "Haliane"
pessoa1.email = "haliane@email.com"
dump(pessoa1)
// É feita a reassignação do valor name dentro do objeto Pessoa
/*
 Quando temos variaveis opcionais, caso façamos a seguinte chamada:
 print(pessoa1.name) ==> Expression implicitly coerced from 'String?' to 'Any'

 Recebemos o warn designado. Isso ocorre pois name possívelmente pode ser nil (null)
 Para tratarmos essa questão podemos utilizar duas abordagens
 */
print(pessoa1.name!)

// ou realizando uma verificação para toda vez que a variavel name for != nil ele exibir o seu valor
if let name = pessoa1.name {
    print(name)
}
