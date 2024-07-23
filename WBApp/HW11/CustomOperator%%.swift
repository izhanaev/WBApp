//
//  CustomOperator%%.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 23.07.2024.
//

import Foundation

infix operator %% : AdditionPrecedence

func %% (number: String, count: Int) -> String {
    let digits = number.filter { $0.isNumber }
    return String(digits.prefix(count))
}

func formatCode(_ number: String) -> String {
    return number %% 4
}
