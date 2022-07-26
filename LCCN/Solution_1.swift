//
//  Solution_1.swift
//  LCCN
//
//  Created by Ru Jia on 2022/7/26.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        
        var tempIndexA = 0
        while tempIndexA < nums.count {
            var tempIndexB = tempIndexA + 1
            
            while tempIndexB < nums.count {
                if checkResult(nums[tempIndexA], nums[tempIndexB], target) {
                    result = [tempIndexA, tempIndexB]
                    break
                }
                tempIndexB += 1
            }
            tempIndexA += 1
        }
        
        return result
    }
    
    func checkResult(_ a: Int, _ b: Int, _ sum: Int) -> Bool {
        return a + b == sum;
    }
}
