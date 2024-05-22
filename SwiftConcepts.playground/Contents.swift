import UIKit

/*
 VARIÁVEIS E CONSTANTES
 
 Variáveis e constantes são espaços de memória reservados para um tipo de dado.
 Quando declaramos uma variável ou uma constante, estamos definindo e reservando
 um espaço na memória da máquina para armazenar o valor de um determinado tipo
 durante a execução do programa.
 
 Uma variável é um tipo de dado que serve para armazenar valores que se podem
 alterar ao longo da execução de um algoritmo.
 O Swift também faz uso extensivo de variáveis cujos valores não podem ser
 alterados. Esses são conhecidos como constantes. Na linguagem Swift são definidos
 por: var -> tem seu valor mutável e let -> não podem ser alteradas.
 */

// Criando uma variável e atribuindo um valor
var pais: String = "Brasil"

// Alterando o valor de uma variável
var cidade: String = "Fortaleza"
cidade = "Maranguape"

// Utilizando declaração de constantes
let estado = "CE"
let ddd = "85"
/*
 Aqui já criamos uma constante para estado e ddd e não é mais possível reatribui-las
 da mesma maneira como fazemos com as variáveis do tipo "var" pois teremos um erro
 de compilação.
 */

/*
 DESCOBRINDO TIPOS DE DADOS NO SWIFT
 
 Os tipos de dados classificam o tipo de informação que pode ser armazenado dentro de
 uma variável. O Swift fornece seis tipos de dados básicos que permitem você selecionar
 o tipo apropriado para a sua variável.
 */

// 1. Inteiro - Representa um número sem casas decimais
let inteiro: Int = 32

// 2. Float - Representa um número real com componentes decimais
let real: Float = 3.141592

// 3. Double - Semelhante ao Float. No entanto o Double possui maior precisão, suporta até 15 casas decimais
let realDuplo: Double = 3.14159265358

// 4. Character - É usado para representar uma string de um único caractere
let caracter: Character = "P"

// 5. String - É utilizado para representar uma cadeia de caracteres
let texto: String = "Paulo"

// 6. Bool - É usado para representar dois únicos valores possíveis, verdadeiro ou falso
let isTruthy: Bool = true
let isFalsy: Bool = false

/*
 CONHECENDO OPERADORES NO SWIFT
 
 Os operadores são simbolos especiais que realizam operações para verificar, alterar ou combinar valores
 */

// 1. Aritméticos
3 + 2 // Adição
5 - 1 // Subtração
5 * 8 // Multiplicação
6 / 2 // Divisão
8 % 2 // Resto (Módulo)

// 2. Comparação - Os operadores de comparação são utilizados para comparar valores e retornam true ou false
3 == 5 // Igualdade
3 != 5 // Diferença
3 > 5 // Maior que...
3 < 5 // Menor que...
3 >= 5 // Maior ou igual que...
3 <= 5 // Menor ou igual que...

// 3. Atribuição
var x = 10
x += 2 // x = x + 2
x -= 2 // x = x - 2
x /= 2 // x = x / 2

/*
 ESTRUTURAS CONDICIONAIS
 
 As estruturas condicionais permitem que um determinado bloco de código seja executado baseado
 em uma condição. Uma condição tem apenas dois possíveis resultados: verdadeiro ou falso.
 */

// 1. Declaração - iniciamos uma variavel com o valor true
let permission = true

// 2. Condicional - Criamos um if que será executado quando o valor for verdadeiro
/*
 Obs: a linguagem Swift permite que você realize validações truthy apenas com o valor de entrada
 Ex: if permission { ...faz alguma coisa }
*/
if permission == true {
    print("Acesso permitdo")
}
print("Fim da primeira instrução")

if permission {
    print("Seu acesso foi concedido")
} else {
    print("Acesso negado!")
}

/*
 EXPLORANDO OPCIONAIS NO SWIFT
 
 Um opcional (Optional) é um tipo que permite declarar variáveis que podem ou não
 conter um valor. Caso não exista um valor, a variável será nil, ou seja, ela
 receberá um valor inexistente. Para declarar uma variável opcional basta adicionar
 um "?" após a declaração do tipo.
*/

// 1. Declaração de variaáveis - por padrão seu valor inicial é nil
var name: String?
var age: Int?
var wight: Float?

// 2. Inserindo valores
name = "Paulo"

// 3. Destruindo
name = nil

/*
 Para ter acesso ao valor de uma opcional você deve desembrulhar a variável, esse processo
 se chama unwrapping. Cuidado! Você sempre deve desembrulhar um valor opcional antes de
 utiliza-lo no codigo.
*/

// 4. Acessando (desembrulhando) - para isso utilizamos "!", alternativa mais simples porém não recomendada
age = 32
print("Esse é o valor da variável age: \(age!)")

// A alternativa mais segura de fazer o unwrapping é através de condicionais. Esse processo é chamado de Optional Binding
// Dessa forma garantimos que o valor opcional só seja acessado após ser devidamento desembrulhado.
if let age = age {
    print("Fazendo o unwrapping por condição:", age)
}

/*
 NIL COALESCING
 
 O operador Nil Coalescing permite retornar um valor padrão para um valor opcional que
 não contém um valor. Caso o opcional contenha um valor, ele é desembrulhado normalmente.
 O operador é uma alternativa bastante eficiente para trabalhar com opcionais de forma
 concisa e legível.
*/

// 1. Declarando - Criamos uma constante opcional idade que está vazia, Criamos outra variável chamada defaultValue
let idade: Int? = nil
let defaultValue = 20

// 2. Nil Coalescing (??) - Declaramos uma constante chamada result e utilizamos o operador nil coalescing ??
// para determinar o seu valor inicial. No exemplo result irá receber o valor de defaultValue, pois o opcional
// idade está vazio. Caso houvesse valor atribuido para idade ela receberia o valor contido nessa constante.
let result = idade ?? defaultValue
print("Valor: \(result)")

/*
 ARRAYS NO SWIFT
 
 Um array é capaz de armazenar valores multiplos do mesmo tipo em uma única lista. Os valores
 são armazenados de maneira sequencial e ordenada. Cada item de um array recebe automaticamente
 um índice que será usada para identificar sua posção na lista.
 
 Ex: A | B | C | D | E | F
     0   1   2   3   4   5 <= indices
 */

// 1. Declarando - Declaramos um array chamados numeros que vai armazenar valores do tipo Int
var numeros = [2, 3, 5]

// 2. Inserindo - Aqui inserimos um novo valor na ultima posição do array
numeros.append(7)
print(numeros)

// 3. Acessando - Acessamos cada item atraves do seu indice numeros[0] => 2
numeros[0]
numeros[1]

// 4. Alterando - Aqui alteramos o valor do indice 2 para o valor 4
numeros[2] = 4
print(numeros)

// 5. Removendo - Aqui estamos deletando a quarta posição do array
numeros.remove(at: 3)
print(numeros)





