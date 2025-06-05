//
//  3024. Type of Triangle.swift
//  AlgorithmsMacOSTerminalApp
//
//  Created by Артем Мерзликин on 05.06.2025.
//

import Foundation

func triangleType(_ nums: [Int]) -> String {
    let nums = nums.sorted()
    if nums[0] + nums[1] > nums[2] {
        if nums[0] == nums[2] {
            return "equilateral"
        }
        else if nums[0] == nums[1] || nums[1] == nums[2] {
            return "isosceles"
        }
        else { return "scalene" }
    }
    return "none"
}

// print(triangleType([3,3,3]))
