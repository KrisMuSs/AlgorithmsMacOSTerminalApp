//
//  9. Palindrome Number.swift
//  AlgorithmsMacOSTerminalApp
//
//  Created by Артем Мерзликин on 29.05.2025.
//

import Foundation

func isPolindrom(_ x: Int) {
    
    var xMutable = x
    var reversed = 0
    
    while xMutable != 0 {
        let remainder = xMutable % 10
        reversed = (reversed * 10) + remainder
        xMutable = xMutable / 10
    }
    print(x == reversed)

}

