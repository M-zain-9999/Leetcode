/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func maxPathSum(_ root: TreeNode?) -> Int {
    var maxSum = Int.min
    
    func maxPathSumHelper(_ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }
        
        let leftSum = max(maxPathSumHelper(node.left), 0)
        let rightSum = max(maxPathSumHelper(node.right), 0)
        
        maxSum = max(maxSum, node.val + leftSum + rightSum)
        
        return node.val + max(leftSum, rightSum)
    }
    
    _ = maxPathSumHelper(root)
    
    return maxSum
}

}