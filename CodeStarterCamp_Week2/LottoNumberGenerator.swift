//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by 정한솔 on 8/23/24.
//

import Foundation

class LottoNumberGenerator {
    var winningNumbers: [Int] = []
    var bonusNumber: Int = 0
    var currentLottoRound: Int = 0
    
    func getLottoNumbers() {
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
            getLottoNumbers()
        }
        
        winningNumbers.sort()
        currentLottoRound += 1
    }
    
    func printLottoWinningNumbers() {
        generateLottoWinningNumbers()
        print("\(currentLottoRound)회차의 당첨 번호는 \(winningNumbers), 보너스 번호는 \(bonusNumber)입니다.")
    }
}

func checkMatchingNumbers(myLottoRound: Int, myLottoNumbers: [Int], currentLottoRound: Int, winningNumbers: [Int], bonusNumber: Int) {
    let matchingNumbers = myLottoNumbers.filter { winningNumbers.contains($0) }
    let bonusMatch = myLottoNumbers.contains(bonusNumber)
    
    if myLottoRound == currentLottoRound {
        if matchingNumbers.isEmpty && !bonusMatch {
            print("아쉽지만 겹치는 번호가 없습니다.")
        } else {
            print("축하합니다! 겹치는 번호는 \(matchingNumbers) 입니다!")
            
            if bonusMatch {
                print("보너스 번호 \(bonusNumber)도 맞췄습니다!")
            }
        }
    }
    else {
        print("회차가 다릅니다.")
    }
}
