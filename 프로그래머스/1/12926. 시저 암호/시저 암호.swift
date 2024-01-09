func solution(_ s: String, _ n: Int) -> String {
    var result = ""

    for char in s {
        if char.isLetter {
        // 현재 문자가 알파벳인지 확인
            let isUpperCase = char.isUppercase
            // 대문자라면 true, 소문자라면 false
            let unicodeScalar = isUpperCase ? char.unicodeScalars.first! : char.lowercased().unicodeScalars.first!
            // Unicode 스칼라 값을 얻음
            let asciiValue = Int(unicodeScalar.value)
            // 현재 문자의 ASCII 값 계산
            let shiftedAsciiValue = (asciiValue - (isUpperCase ? 65 : 97) + n) % 26 + (isUpperCase ? 65 : 97)
            // 시저 암호를 적용한 새로운 ASCII 값 계산
            let shiftedChar = Character(UnicodeScalar(shiftedAsciiValue)!)
            // 새로운 문자를 결과에 추가
            result.append(shiftedChar)
        } else {
            // 알파벳이 아닌 경우 그대로 결과에 추가
            result.append(char)
        }
    }

    return result
}
