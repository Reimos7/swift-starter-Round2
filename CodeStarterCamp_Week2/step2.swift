//
//  step2-1.swift
//  CodeStarterCamp_Week2
//
//  Created by 변예린 on 8/20/24.
//

import Foundation

var lottery: Set<Int> = []

func makeLottery() {
    lottery.removeAll()
    while lottery.count < 6 {
        lottery.insert(Int.random(in: 1...45))
    }
}

func matchLottoNumbers(myNumbers: Set<Int>) {
    let myLottoNumbers: Set<Int> = myNumbers
    
    if myLottoNumbers.count != 6 {
        print("1 ~ 45 숫자 중 서로 다른 로또 번호를 6개 입력하세요.")
        return
    }
    
    makeLottery()
    
    let result: Set<Int> = lottery.intersection(myLottoNumbers)
    
    let stringResult = result.map {String($0)}.joined(separator: ", ")
    
    if result.count > 0 {
        print("축하합니다! 겹치는 번호는 \(stringResult) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
