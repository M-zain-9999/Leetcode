class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var result = [[Int]]()
    var newInterval = newInterval
    
    for interval in intervals {
        if interval[1] < newInterval[0] {
            result.append(interval)
        } else if interval[0] > newInterval[1] {
            result.append(newInterval)
            newInterval = interval
        } else {
            newInterval[0] = min(newInterval[0], interval[0])
            newInterval[1] = max(newInterval[1], interval[1])
        }
    }
    
    result.append(newInterval)
    
    return result
        
    }
}