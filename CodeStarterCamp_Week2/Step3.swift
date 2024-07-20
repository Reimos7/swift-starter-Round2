import Foundation

var currentRound: Int = 0

func saveLottoNumbers() -> Dictionary<String, [Int]> {
    currentRound += 1
    
    var winningNumbersRecord: Dictionary<String, [Int]> = [:]
    
    var currentLottoNumber: [Int] = []
    if currentRound > 0 {
        for record in lottoNumbers {
            currentLottoNumber.append(record)
        }
        currentLottoNumber.sort()
        winningNumbersRecord["\(currentRound)회차"] = currentLottoNumber
    }
    return winningNumbersRecord
}
// 금번 회차의 로또 번호를 저장하는 함수

func findLottoNumber(of round: Int) {
    if round > 0 {
        var lottoNumber: String = String()
        for finder in saveLottoNumbers().values  {
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
