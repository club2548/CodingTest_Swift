import Foundation

func solution(_ sizes: [[Int]]) -> Int {
    var maxWidth = 0
    var maxHeight = 0
    
    for size in sizes {
        let width = size[0]
        let height = size[1]
        
        maxWidth = max(maxWidth, min(width, height))
        maxHeight = max(maxHeight, max(width, height))
    }
    
    return maxWidth*maxHeight
}
