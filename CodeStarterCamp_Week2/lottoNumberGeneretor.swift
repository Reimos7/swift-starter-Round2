//
//  lottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by 조준희 on 8/16/24.
// 최종

import Foundation

let myLottoNumbers: Set<Int> = [23, 14, 33, 56, 43, 10]
var randomLottoNumber: Set<Int> = Set<Int>()

func checkLottoResults() {
    createRandomLottoNumber()
    matchMyNumber()
}

func createRandomLottoNumber() {
    randomLottoNumber.removeAll()
    
    while randomLottoNumber.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        randomLottoNumber.insert(randomNumber)
    }
}

func matchMyNumber() {
    let numberCheck: Set<Int> = randomLottoNumber.intersection(myLottoNumbers)
    
    if numberCheck.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 \(numberCheck) 입니다!")
    }
}

