class Solution {
   func removeDuplicates(_ nums: inout [Int]) -> Int {
    let len = nums.count
    if len <= 1 {
        return len
    }
    var idx = 0
    for n in nums {
        if n != nums[idx] {
            idx += 1
            nums[idx] = n
        }
    }
    return idx + 1
}

}