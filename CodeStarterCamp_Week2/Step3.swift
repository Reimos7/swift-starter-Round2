import Foundation

var currentRound: Int = 0
var winningNumbersRecord: Dictionary<Int, [Int]> = [:]

func saveLottoNumbers() {
    currentRound += 1
    
    var currentLottoNumber: [Int] = []
    if currentRound > 0 {
        for record in lottoNumbers.sorted() {
            currentLottoNumber.append(record)
        }
        winningNumbersRecord[currentRound] = currentLottoNumber
    }
}
// 금번 회차의 로또 번호를 저장하는 함수

func findLottoNumber(of round: Int) {
    if round > 0 {
        var lottoNumber: String = String()
        if let finder = winningNumbersRecord[round] {
            for findRecord in finder {
                lottoNumber.insert(contentsOf: "\(findRecord), ", at: lottoNumber.endIndex)
            }
            lottoNumber.removeLast()
            lottoNumber.removeLast()
            print("\(round)회차의 로또 당첨 번호는 \(lottoNumber) 입니다.")
        }
    }
}
// 특정 회차의 로또 번호를 찾고 출력하는 함수
