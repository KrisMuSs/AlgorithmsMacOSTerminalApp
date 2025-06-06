//
//  20. Valid Parentheses.swift
//  AlgorithmsMacOSTerminalApp
//
//  Created by Артем Мерзликин on 06.06.2025.
//

import Foundation

func isValid(_ s: String) -> Bool {
    
    guard s.count % 2 == 0 else { return false }
    
    var stack: [Character] = []
    
    for ch in s {
        switch ch {
        case "(": stack.append(")")
        case "[": stack.append("]")
        case "{": stack.append("}")
        default:
            if stack.isEmpty || stack.removeLast() != ch {
                return false
            }
        }
    }
    
    return stack.isEmpty
}


// print(isValid("()[]{}"))
