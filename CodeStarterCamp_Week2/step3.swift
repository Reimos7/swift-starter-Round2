//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 변예린 on 8/20/24.
//

import Foundation

var times = 0
var winningHistory = [String: Set<Int>]()

func saveHistory() {
    makeLottery()
    times += 1
    winningHistory["\(times)회차"] = lottery
}

func findHistory(time: Int) {
    if let history = winningHistory["\(time)회차"] {
        let historyResult = history.sorted().map{String($0)}.joined(separator: ", ")
        print("\(time)회차의 로또 당첨 번호는 \(historyResult) 입니다.")
    }
}
