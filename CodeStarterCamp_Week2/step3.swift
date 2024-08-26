//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 구현 on 8/25/24.
//

import Foundation

var lottoRoundDictionary: [String: [Int]] = [:]

func recordLottoRounds(_ lottoNumbers: Set<Int>) {
    let currentRound: Int = getCurrentRound()
    lottoRoundDictionary["\(currentRound)회차"] = Array(lottoNumbers)
}

func getCurrentRound() -> Int {
    var preRoundNumber: Int = 0
    for round in lottoRoundDictionary.keys {
        if let roundNumber: Int = Int(round.split(separator: "회")[0]) {
            if preRoundNumber < roundNumber {
                preRoundNumber = roundNumber
            }
        }
    }
    return preRoundNumber + 1
}

func printLottoNumbers(round: Int) {
    if let lottoNumbers: [Int] = lottoRoundDictionary["\(round)회차"] {
        let numbersJoined: String = lottoNumbers.map{ String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(numbersJoined) 입니다.")
    }
}
