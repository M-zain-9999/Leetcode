class Solution {
    func largestPalindromic(_ num: String) -> String {
var occur = [Int](repeating: 0 , count: 10)

    for char in num 
    {
        let x = Int(String(char))!
        occur[x] += 1
    }
    var even = ""
    var mOdd = -1

    for i in (0...9).reversed() {
        if occur[i] % 2 == 1 
        {
            mOdd = max(mOdd, i)
        }
    
        even += String(repeating: String(i), count: occur[i] / 2)
        }
        var sol = even + (mOdd == -1 ? "" : String(mOdd)) + String(even.reversed())
        if sol.first == "0" 
        {
            if mOdd == -1
            {
                return "0"
            }
            return String(mOdd)
        }
        return sol
    }
}