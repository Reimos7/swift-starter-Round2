//
//  lottoRoundSearch.swift
//  CodeStarterCamp_Week2
//
//  Created by 조준희 on 8/19/24.
//

import Foundation

var roundSave: [Int : [Int]] = [:]

func lottoRoundSave(rounds: Int) {
    for round in 1...rounds {
        roundSave[round] = Array(randomLottoNumber).sorted()
    }
}

func printLottoRound(round: Int) {
    if let lottoNumbers = roundSave[round] {
            print("\(round)회차의 로또 당첨 번호는 \(lottoNumbers)입니다.")
        } else {
            print("\(round)회차의 로또 당첨 번호를 찾을 수 없습니다.")
        }
}
