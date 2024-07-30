//
//  LottoGameSave.swift
//  CodeStarterCamp_Week2
//
//  Created by 배정길 on 7/26/24.
//

import Foundation

// 회차와 Lotto번호들을 저장하는 Dictionary 타입의 변수를 생성
var lottoHistory: [Int: [Int]] = [:]

// 로또 번호를 5번 생성하고 저장하는 함수
func generateAndSaveLottoNumbers(rounds: Int) {
    for round in 1...rounds {
        let roundLottoNumbers = generateLottoNumbers()
        lottoHistory[round] = roundLottoNumbers
    }
}

// Dictionary에서 원하는 회차의 로또 당첨 번호를 찾아서 안전하게 추출 하는 함수
func getLottoNumbers(round: Int) -> [Int]? {
    return lottoHistory[round]
}

// 특정 회차의 로또 번호를 안전하게 출력하는 함수
func printSpecificLottoNumbers(round: Int) {
    if let lottoNumbers = getLottoNumbers(round: round) {
        let lottoNumbersString = lottoNumbers.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumbersString) 입니다.")
    } else {
        print("\(round)회차의 로또 당첨 번호를 찾을 수 없습니다.")
    }
}
