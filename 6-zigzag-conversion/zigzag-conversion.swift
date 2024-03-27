class Solution {
   func convert(_ s: String, _ numRows: Int) -> String {
    if numRows == 1 || numRows >= s.count {
        return s
    }
    
    var rows = Array(repeating: "", count: numRows)
    var index = 0
    var step = 1
    
    for char in s {
        rows[index].append(char)
        
        if index == 0 {
            step = 1
        } else if index == numRows - 1 {
            step = -1
        }
        
        index += step
    }
    
    return rows.joined()
}

}