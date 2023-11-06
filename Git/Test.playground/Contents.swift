import UIKit

enum Operators: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
    case reset = "C"
    case percent = "%"
    case changeSign = "+/-"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case doubleZero = "00"
}

let numbers : [Operators] = [.zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .doubleZero]
let operators : [Operators] = [.addition, .subtraction, .multiplication, .division, .reset, .percent, .changeSign]


func splitFomula(_ fomula: String) {
    let opRawValues = operators.map { $0.rawValue }
    let numRawValues = numbers.map { $0.rawValue }
    
    let operators: [String] = fomula.split(whereSeparator: { numRawValues.contains(String($0)) })
        .map { String($0) }
    print(operators)
}

splitFomula("12+18-70*2/4")
