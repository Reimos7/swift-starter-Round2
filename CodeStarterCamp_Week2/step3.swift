//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by wodnd on 7/19/24.
//
import Foundation

func generateLottoNumbers() -> [Int] {
    var lottoNumbers: [Int] = []
    
    while lottoNumbers.count < 6 {
        let number = Int.random(in: 1...45)
        
        if !lottoNumbers.contains(number) {
            lottoNumbers.append(number)
        }
    }
    return lottoNumbers
}

func storeLottoToDictionary(round: Int, lottoNumbers: [Int], lottoDictionary: inout [Int: [Int]]) {
    lottoDictionary[round] = lottoNumbers
}

func checkLottoNumbers(round: Int, lottoDictionary: [Int: [Int]]) {
    
    if let lottoNumbers = lottoDictionary[round] {
        let lottoStrings = lottoNumbers.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(lottoStrings) 입니다.")
    } else {
        print("해당 회차 정보가 없습니다.")
    }
}

func lottoOutput() {
    var roundNumber: Int = 1
    var lottoDictionary: [Int: [Int]] = [:]

    while roundNumber <= 5 {
        let lottoNumbers = generateLottoNumbers()
        storeLottoToDictionary(round: roundNumber, lottoNumbers: lottoNumbers, lottoDictionary: &lottoDictionary)
        roundNumber += 1
    }

    for round in 1..<roundNumber {
        checkLottoNumbers(round: round, lottoDictionary: lottoDictionary)
    }
}
