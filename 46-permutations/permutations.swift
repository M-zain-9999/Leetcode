class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
    if nums.count == 1 {
        return [nums]
    }
    
    var perms = [[Int]]()
    
    for (i, n) in nums.enumerated() {
        var rem = nums
        rem.remove(at: i)
        
        let subPerms = permute(rem)
        
        for var subPerm in subPerms {
            subPerm.insert(n, at: 0)
            perms.append(subPerm)
        }
    }
    
    return perms
}

}