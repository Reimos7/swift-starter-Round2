//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 변예린 on 8/20/24.
//

import Foundation

var rounds = 0
var winningHistory = [Int: Set<Int>]()

func saveHistory() {
    makeLottery()
    rounds += 1
    winningHistory[rounds] = lottery
}

func findHistory(round: Int) {
    guard let history = winningHistory[round] else { print("해당 회차의 정보를 찾을 수 없습니다.")
        return }
        
        let historyResult = history.sorted().map{String($0)}.joined(separator: ", ")
    
        print("\(round)회차의 로또 당첨 번호는 \(historyResult) 입니다.")
    }

