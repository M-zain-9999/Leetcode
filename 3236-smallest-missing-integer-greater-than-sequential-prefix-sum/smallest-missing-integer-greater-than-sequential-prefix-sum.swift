class Solution {
func missingInteger(_ nums: [Int]) -> Int
    {
        var n = nums.count
        var lindex = n - 1
        for i in 1..<n {
            if nums[i] != nums[i - 1] + 1 {
                lindex = i - 1
                break
            }

        }
       var seqsum = 0
       for i in 0...lindex {
        seqsum +=  nums[i]
       }
       seqsum = (nums[0] + nums[lindex]) * (lindex + 1) / 2 
       let numset = Set(nums)
       var reqint = seqsum
       while numset.contains(reqint){
        reqint += 1
       }
       return reqint
    }
}
