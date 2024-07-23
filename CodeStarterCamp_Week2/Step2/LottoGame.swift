//
//  LottoGame.swift
//  CodeStarterCamp_Week2
//
//  Created by 배정길 on 7/20/24.
//

import Foundation

// 로또 당첨번호를 생성하는 함수
func generateLottoNumbers() -> [Int] {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        // 1~45까지 랜덤 함수 생성
        let number = Int.random(in: 1...45)
        // set 배열에 insert, set 은 기존 값은 유지 insert 되지 않는다.
        lottoNumbers.insert(number)
    }
    // 낮은 숫자부터 정렬하기
    return Array(lottoNumbers).sorted()
}

// 겹치는 숫자 확인하는 함수
func findOverlappingNumbers(myLottoNumbers: [Int], generateLottoNumbers: [Int]) -> [Int] {
    myLottoNumbers.filter{ generateLottoNumbers.contains($0) }
}

// 찍은 번호와 로또 당첨 번호 의 겹치는 숫자를 확인하는 함수를 생성합니다
func playLottoGame(myLottoNumbers: [Int]) {
    let generateLottoNumbers = generateLottoNumbers()
    let findOverlappingNumbers = findOverlappingNumbers(myLottoNumbers: myLottoNumbers, generateLottoNumbers: generateLottoNumbers)
    
    if findOverlappingNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let overlappingNumbersString = findOverlappingNumbers.map { String($0)
        }.joined(separator: ", ")   // String 배열을 콤마로 결합하여 하나의 String 으로 만듬
        print("축하합니다! 겹치는 번호는 \(overlappingNumbersString) 입니다!")
    }
}
