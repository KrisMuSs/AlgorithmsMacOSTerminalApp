//
//  3403. Find the Lexicographically Largest String From the Box I.swift
//  AlgorithmsMacOSTerminalApp
//
//  Created by Артем Мерзликин on 04.06.2025.
//

import Foundation

// Вариант с рекурсией

func findLexLargestString(word: String, numFriends: Int) -> String {
    var box: [String] = []
    let wordArray = Array(word)
    
    func dfs(_ start: Int, _ parts: [String]) {
        if parts.count == numFriends && start == wordArray.count {
            box.append(contentsOf: parts)
            return
        }
        if parts.count >= numFriends {
            return
        }
        
        for i in start..<wordArray.count {
            let sub = String(wordArray[start...i])
            dfs(i + 1, parts + [sub])
        }
    }
    
    dfs(0, [])
    
    return box.max() ?? ""
}
// print(findLexLargestString(word: "dbca", numFriends: 2))

