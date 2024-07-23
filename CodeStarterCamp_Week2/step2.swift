//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by wodnd on 7/19/24.
//

import Foundation


func compareLotto() {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    let lottoNumbers: [Int] = generateLottoNumbers()
    checkLotto(myLotto: myLottoNumbers, lotto: lottoNumbers)
}


func generateLottoNumbers() -> [Int] {
    var lottoNumber: [Int] = []
    
    while lottoNumber.count < 6 {
        let number = Int.random(in: 1...45)
        
        if !lottoNumber.contains(number) {
            lottoNumber.append(number)
        }
    }
    return lottoNumber
}

func checkLotto(myLotto: [Int], lotto: [Int]) {
    var result: [Int] = []
    myLotto.forEach { number in
        if lotto.contains(number) {
            result.append(number)
        }
    }
    
    if !result.isEmpty {
        let resultString = result.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(resultString) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
