//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 구현 on 8/19/24.
//

import Foundation

func createLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    var randomNumber: Int
    
    repeat {
        randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    } while lottoNumbers.count < 6
    
    return lottoNumbers
}

func findSameNumbers(of chosenNumbers: [Int], compared lottoNumbers: Set<Int>) -> [Int] {
    let intersection: Set<Int> = lottoNumbers.intersection(Set(chosenNumbers))
    return Array(intersection)
}

func printLotteryResult(_ sameNumbers: [Int]) {
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let numbersJoined: String = sameNumbers.map{ String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(numbersJoined) 입니다!")
    }
}

func drawLottery(chosenNumbers: [Int]) {
    let lottoNumbers: Set<Int> = createLottoNumbers()
    let sameNumbers: [Int] = findSameNumbers(of: chosenNumbers, compared: lottoNumbers)
    printLotteryResult(sameNumbers)
}
