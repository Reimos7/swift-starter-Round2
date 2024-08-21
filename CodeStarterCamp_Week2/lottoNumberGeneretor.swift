//
//  lottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by 조준희 on 8/16/24.
//

import Foundation

func checkLottoResult(myEnteredLottoNumber: Set<Int>) {
    let randomLottoNumbers = createRandomLottoNumber()
    matchMyNumber(myEnteredLottoNumber: myEnteredLottoNumber, randomLottoNumbers: randomLottoNumbers)
}

func createRandomLottoNumber() -> Set<Int> {
    var randomLottoNumbers: Set<Int> = Set<Int>()
    
    while randomLottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        randomLottoNumbers.insert(randomNumber)
    }
    return randomLottoNumbers
}

func matchMyNumber(myEnteredLottoNumber: Set<Int>, randomLottoNumbers: Set<Int>) {
    let numberCheck: Set<Int> = randomLottoNumbers.intersection(myLottoNumbers)
    
    if numberCheck.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(numberCheck.map{String($0)}.joined(separator: ", ")) 입니다!")
    }
}

