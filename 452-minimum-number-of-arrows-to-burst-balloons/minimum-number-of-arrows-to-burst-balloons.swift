class Solution {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        guard !points.isEmpty else { return 0 }
    
    let sortedpoints = points.sorted { $0[1] < $1[1] }
    
    var arrows = 1
    var cEnd = sortedpoints[0][1]
    
    for i in 1..<sortedpoints.count {
        let b = sortedpoints[i]
        
        if b[0] > cEnd {
            arrows += 1
            cEnd = b[1]
        }
    }
    
    return arrows
        
    }
}