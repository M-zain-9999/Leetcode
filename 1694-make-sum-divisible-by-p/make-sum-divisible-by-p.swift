class Solution {
    func minSubarray(_ nums: [Int], _ p: Int) -> Int {
        
    let tSum = nums.reduce(0, +)
    let targetRemain = tSum % p

    if targetRemain == 0 {
        return 0
    }

    var prefixSum = 0
    var minSubarrayLength = nums.count
    var prefixSumIndices = [Int: Int]()

    prefixSumIndices[0] = -1 

    for (index, num) in nums.enumerated() {
        prefixSum = (prefixSum + num) % p
        let complement = (prefixSum - targetRemain + p) % p

        if let lastIndex = prefixSumIndices[complement] {
            minSubarrayLength = min(minSubarrayLength, index - lastIndex)
        }

        prefixSumIndices[prefixSum] = index
    }

    return minSubarrayLength < nums.count ? minSubarrayLength : -1
}
}