import Foundation

func solution(_ s:String) -> Int {
    var result = s
    let alphabetNumber = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    
    for i in 0..<alphabetNumber.count {
        result = result.replacingOccurrences(of: alphabetNumber[i], with: String(i))
    }
    return Int(result)!
}