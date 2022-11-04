//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var luckyNumbers: Set<Int> = Set<Int>()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let lottoFailMessage: String = "아쉽지만 겹치는 번호가 없습니다."

func generateLuckyNumbers() {
    while luckyNumbers.count < 6 {
        luckyNumbers.insert(Int.random(in: 1...45))
    }
}
func checkLottoNumbers() {
    let overlapNumbers: Set<Int> = luckyNumbers.intersection(myLottoNumbers)
    guard overlapNumbers.count != 0 else { return print(lottoFailMessage) }
    var outputNumbers = "\(overlapNumbers)"
    outputNumbers = outputNumbers.trimmingCharacters(in: ["[","]"])
    print("축하합니다! 겹치는 번호는 \(outputNumbers) 입니다!")
}

generateLuckyNumbers()
checkLottoNumbers()
