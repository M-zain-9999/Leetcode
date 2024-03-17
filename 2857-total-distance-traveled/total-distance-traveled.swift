class Solution {
    func distanceTraveled(_ mainTank: Int, _ additionalTank: Int) -> Int {
    var distance = 0
    var count = 0
    
    var remainingMainTank = mainTank
    var remainingAdditionalTank = additionalTank
    
    while remainingMainTank > 0 {
        distance += 10
        remainingMainTank -= 1
        count += 1
        
        if count == 5 && remainingAdditionalTank > 0 {
            remainingAdditionalTank -= 1
            remainingMainTank += 1
            count = 0 // Reset count after using additional tank
        }
    }
    
        return distance
    }

        
}
