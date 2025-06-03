//
//  14. Longest Common Prefix.swift
//  AlgorithmsMacOSTerminalApp
//
//  Created by Артем Мерзликин on 03.06.2025.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
         if strs.isEmpty {
            return ""
        }

        let sortedV = strs.sorted()
        let first = Array(sortedV.first!)
        let last = Array(sortedV.last!)
        var ans = ""

        let minLength = min(first.count, last.count)

        for i in 0..<minLength {
            if first[i] != last[i] {
                break
            }
            ans.append(first[i])
        }

        return ans
    }

// print(longestCommonPrefix(["flower","flow","flight"]))

