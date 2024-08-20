//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 변예린 on 8/15/24.
//

import Foundation

let myLottoNumbers: Set<Int> = [11, 26, 3, 4, 35, 6]
var winningLottoNumbers: Set<Int> = []

func makeWinningNumbers(lottery: [Int]) {
    winningLottoNumbers.removeAll()
    var number = 0
    while winningLottoNumbers.count < 6 {
        winningLottoNumbers.insert(lottery[number])
        number += 1
    }
}


let result: Set<Int> = winningLottoNumbers.intersection(myLottoNumbers)

func matchLottoNumbers(lottery: [Int]) {
    makeWinningNumbers(lottery: lottery)
    if result.count > 0 {
        print("축하합니다! 겹치는 번호는 \(result.sorted())입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
