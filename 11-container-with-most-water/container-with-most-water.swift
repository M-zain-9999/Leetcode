class Solution {
    func maxArea(_ height: [Int]) -> Int {
    var i = 0
    var j = height.count - 1
    var maxA = 0
    
    while i < j {
        let minH = min(height[i], height[j])
        let w = j - i
        let area = minH * w
        
        if area > maxA {
            maxA = area
        }
        
        if height[i] < height[j] {
            i += 1
        } else {
            j -= 1
        }
    }
    
    return maxA
}

}