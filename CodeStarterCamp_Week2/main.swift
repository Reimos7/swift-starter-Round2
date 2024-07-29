import Foundation

func createWinLottoNumbers() -> Set<Int> {
    var winLottoNumbers: Set<Int> = Set<Int>()
    
    while winLottoNumbers.count < 6 {
        let number = Int.random(in: 1...45)
        winLottoNumbers.insert(number)
    }
    
    return winLottoNumbers
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func checkSameNumbers(winLottoNumbers: Set<Int>) {
    let sameNumbers: Set<Int> = winLottoNumbers.intersection(myLottoNumbers)
    // Int 형태 set을 문자열로 전환
    let sameNumbersString = sameNumbers.map { String($0) }
    // 문자열 Set을 ,로 구분하여 하나의 문자열로 결합
    let sameNumbersJoin: String = sameNumbersString.joined(separator: ", ")
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(sameNumbersJoin) 입니다!")
    }
}

checkSameNumbers(winLottoNumbers: createWinLottoNumbers())

