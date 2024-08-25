//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 구현 on 8/25/24.
//

import Foundation

var lottoRoundDict: [String: [Int]] = [:]

func recordLottoRounds(_ lottoNumbers: Set<Int>) {
    let currentRound: Int = getCurrentRound()
    lottoRoundDict["\(currentRound)회차"] = Array(lottoNumbers)
}

func getCurrentRound() -> Int {
    var preRoundNumber: Int = 0
    for round in lottoRoundDict.keys {
        if let roundNumber: Int = Int(round.split(separator: "회")[0]) {
            if preRoundNumber < roundNumber {
                preRoundNumber = roundNumber
            }
        }
    }
    return preRoundNumber + 1
}

func printLottoNumbers(round: Int) {
    if let lottoNumbers: [Int] = lottoRoundDict["\(round)회차"] {
        let numbersJoined: String = lottoNumbers.map{ String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(numbersJoined) 입니다.")
    }
}
