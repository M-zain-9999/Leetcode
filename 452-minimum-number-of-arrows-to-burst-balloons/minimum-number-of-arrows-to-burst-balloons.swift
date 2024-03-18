class Solution {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        guard !points.isEmpty else { return 0 }
    
    let sortedPoints = points.sorted { $0[1] < $1[1] }
    
    var arrows = 1
    var currentEnd = sortedPoints[0][1]
    
    for i in 1..<sortedPoints.count {
        let balloon = sortedPoints[i]
        
        if balloon[0] > currentEnd {
            arrows += 1
            currentEnd = balloon[1]
        }
    }
    
    return arrows
        
    }
}