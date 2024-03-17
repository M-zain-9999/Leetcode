class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
      var memo = [Int: Int]()

func findFewestCoins(_ remaining: Int) -> Int {
    if remaining == 0 {
        return 0
    }

    if remaining < 0 {
        return -1
    }

    if let result = memo[remaining] {
        return result
    }

    var fewestCoins = amount + 1

    for coin in coins {
        let remainingCoins = findFewestCoins(remaining - coin)
        if remainingCoins >= 0 && remainingCoins < fewestCoins {
            fewestCoins = remainingCoins + 1
        }
    }

    memo[remaining] = fewestCoins > amount ? -1 : fewestCoins
    return memo[remaining]!
}

return findFewestCoins(amount)

        
    }
}