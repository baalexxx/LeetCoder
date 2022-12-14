import UIKit

// 441. Arranging Coins (easy)

/*
You have n coins and you want to build a staircase with these coins.
The staircase consists of k rows where the ith row has exactly i coins.
The last row of the staircase may be incomplete.

Given the integer n, return the number of complete rows of the staircase you will build.
 
 Example 1:
 ==========
 Input: n = 5
 Output: 2
 Explanation: Because the 3rd row is incomplete, we return 2.
 Example 2:


 Input: n = 8
 ============
 Output: 3
 Explanation: Because the 4th row is incomplete, we return 3.
 
 Constraints:
 1 <= n <= 2^31 - 1
 
 */


class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        Int(0.5*(sqrt(Double(1 + 8 * n)) - 1.0))
    }
}

let solution = Solution()
    
    
solution.arrangeCoins(1)
solution.arrangeCoins(2)
solution.arrangeCoins(3)

// not my but used minimum memory
class Solution_2 {
    func arrangeCoins(_ n: Int) -> Int {
        var n = n
        var i = 0
        while n >= i {
            n -= i
            i += 1
        }
        return i - 1
    }
}
