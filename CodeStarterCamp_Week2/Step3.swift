import Foundation

var winningNumbersRecord: Dictionary<String, [String]> = [:]
var currentRound: Int = 0

func saveLottoNumbers() {
    var currentLottoNumber: [String] = []
    if currentRound > 0 {
        for record in lottoNumbers {
            currentLottoNumber.append("\(record)")
        }
        winningNumbersRecord["\(currentRound)회차"] = currentLottoNumber
    }
}
// 금번 회차의 로또 번호를 저장하는 함수

func findingLottoNumber(for round: Int) {
    if round > 0 {
        if let finder = winningNumbersRecord["\(round)회차"] {
            print("\(round)회차의 로또 당첨 번호는 \(finder.joined(separator: ", ")) 입니다.")
        }
    }
}
// 특정 회차의 로또 번호를 찾고 출력하는 함수
