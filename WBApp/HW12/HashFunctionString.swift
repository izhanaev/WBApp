//
//  HashFunctionString.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.07.2024.
//

import Foundation

func bitwiseHash(_ input: String) -> Int {
    var hash = 0
    let prime1 = 31
    let prime2 = 17
    
    for char in input {
        let asciiValue = Int(char.asciiValue ?? 0)
        hash = (hash << 5) &+ (hash >> 3) &+ asciiValue &* prime1 ^ prime2
    }
    
    return abs(hash)
}
