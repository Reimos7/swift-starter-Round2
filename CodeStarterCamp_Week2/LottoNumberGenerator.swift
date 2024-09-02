//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by 정한솔 on 8/23/24.
//

import Foundation

var winningNumbers: [Int] = []
var bonusNumber: Int = 0
var currentLottoRound: Int? = nil
var lottoRoundInfo: [Int: [Int]] = [:]

func createLottoNumber() {
    let lottoNumber = Int.random(in: 1...45)
    
    if !winningNumbers.contains(lottoNumber) {
        winningNumbers.append(lottoNumber)
    }
    
    repeat {
        bonusNumber = Int.random(in: 1...45)
    } while winningNumbers.contains(bonusNumber)
}

func generateLottoWinningNumbers() {
    winningNumbers = []
    
    while winningNumbers.count < 6 {
        createLottoNumber()
    }
    
    winningNumbers.sort()
    
    if let round = currentLottoRound {
        currentLottoRound = round + 1
    } else {
        currentLottoRound = 1
    }
    
    saveRoundWinningNumbers()
}

func saveRoundWinningNumbers() {
    guard let round = currentLottoRound else {
        print("회차 정보가 설정되지 않았습니다.")
        return
    }
    
    lottoRoundInfo[round] = winningNumbers + [bonusNumber]
}

func printLottoAllRoundInfo() {
    if lottoRoundInfo.isEmpty {
        print("저장된 회차 정보가 없습니다.")
        return
    }
    
    let sortedKeys = lottoRoundInfo.keys.sorted()
    
    print("저장된 로또 당첨 번호 내역입니다.")
    
    for key in sortedKeys {
        if let numbers = lottoRoundInfo[key] {
            let sWinningNumbers = numbers.dropLast().map { String($0) }.joined(separator: ", ")
            let sBonusNumber = numbers.last!
            
            print("\(key)회차의 당첨 번호는 \(sWinningNumbers), 보너스 번호는 \(sBonusNumber)입니다.")
        }
    }
}

func printLottoRoundInfo(round: Int) {
    if let numbers = lottoRoundInfo[round] {
        let sWinningNumbers = numbers.dropLast().map { String($0) }.joined(separator: ", ")
        let sBonusNumber = numbers.last!
        
        print("\(round)회차의 당첨 번호는 \(sWinningNumbers), 보너스 번호는 \(sBonusNumber)입니다.")
    } else {
        print("\(round)회차에 대한 정보가 없습니다.")
    }
}

func printLottoWinningNumbers() {
    let sWinningNumbers = winningNumbers.map { String($0) }.joined(separator: ", ")
    
    print("이번 회차의 당첨 번호는 \(sWinningNumbers), 보너스 번호는 \(bonusNumber)입니다.")
}

func printMatchingLottoResults(myLottoNumbers: [Int]) {
    let matchingNumbers = myLottoNumbers.filter { winningNumbers.contains($0) }
    let bonusMatch = myLottoNumbers.contains(bonusNumber)
    
    if matchingNumbers.isEmpty && !bonusMatch {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else if matchingNumbers.isEmpty && bonusMatch {
        print("보너스 번호 \(bonusNumber)만 맞췄습니다!")
    } else {
        let sMatchingNumbers = matchingNumbers.map { String($0) }.joined(separator: ", ")
        
        print("축하합니다! 겹치는 번호는 \(sMatchingNumbers) 입니다!")
        
        if bonusMatch {
            print("보너스 번호 \(bonusNumber)도 맞췄습니다!")
        }
    }
}
