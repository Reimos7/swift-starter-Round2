//
//  lottoRoundSearch.swift
//  CodeStarterCamp_Week2
//
//  Created by 조준희 on 8/21/24.
//

import Foundation

var roundSave: [Int : Set<Int>] = [:]
var roundCount = 0

func saveLottoRound() {
    roundCount += 1
    let newLottoNumbers = createRandomLottoNumber()
    roundSave[roundCount] = newLottoNumbers
}

func getLottoRoundNumber(round: Int) -> Set<Int>? {
    return roundSave[round]
}

func printLottoRound(round: Int) {
    if let lottoNumbers = getLottoRoundNumber(round: round) {
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumbers.map{String($0)}.joined(separator: ", ")) 입니다.")
        } else {
            print("\(round)회차의 로또 당첨 번호를 찾을 수 없습니다.")
        }
}
