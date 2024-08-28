//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by 정한솔 on 8/23/24.
//

import Foundation

var winningNumbers: [Int] = []
var bonusNumber: Int = 0
var currentLottoRound: Int = 0
var lottoRoundInfo: [String: [Int]] = [:]

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
    currentLottoRound += 1
    saveRoundWinningNumbers()
}

func saveRoundWinningNumbers() {
    let key = "\(currentLottoRound)회차"
    lottoRoundInfo[key] = winningNumbers + [bonusNumber]
}

func printLottoAllRoundInfo() {
    if lottoRoundInfo.isEmpty {
        print("저장된 회차 정보가 없습니다.")
        return
    }
    
    let sortedKeys = lottoRoundInfo.keys.sorted(by: {
        Int($0.replacingOccurrences(of: "회차", with: ""))! < Int($1.replacingOccurrences(of: "회차", with: ""))!
    })
    
    print("저장된 로또 당첨 번호 내역입니다.")
    
    for key in sortedKeys {
        if let numbers = lottoRoundInfo[key] {
            let sWinningNumbers = numbers.dropLast().map { String($0) }.joined(separator: ", ")
            let sBonusNumber = numbers.last!
            
            print("\(key)의 당첨 번호는 \(sWinningNumbers), 보너스 번호는 \(sBonusNumber)입니다.")
        }
    }
}

func printLottoRoundInfo(round: Int) {
    let key = "\(round)회차"
    
    if let numbers = lottoRoundInfo[key] {
        let sWinningNumbers = numbers.dropLast().map { String($0) }.joined(separator: ", ")
        let sBonusNumber = numbers.last!
        
        print("\(key)의 당첨 번호는 \(sWinningNumbers), 보너스 번호는 \(sBonusNumber)입니다.")
    } else {
        print("\(key)에 대한 정보가 없습니다.")
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
