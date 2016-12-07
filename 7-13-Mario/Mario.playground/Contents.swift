/*:
 # Mario
 
 Add your Mario solution (however far you got) to the space below.
 
 Then, commit your work.
 
 Finally, push your work to the remote origin for your repository on GitHub.com.
 
 We will go through this together.
 */

// Add your code below

func levelCost(heights: [Int], maxJump: Int) -> Int {
    var energyUse = 0
    
    heights
    for i in 0...heights.count-2{
        
        let currentPlatformHeight = heights[i]
        let nextPlatformHeight = heights[i + 1]
        let heightDifference = abs(nextPlatformHeight - currentPlatformHeight)
        // trying to figure out the use of energy.
        if heightDifference > 0 {
            
            if heightDifference > maxJump {
                return -1
            }
            energyUse += 2 * heightDifference
        } else {
            energyUse += 1
        }
    }
    return energyUse
}
// expected enery use is 4
levelCost(heights: [1,1,6,1,1], maxJump: 2)