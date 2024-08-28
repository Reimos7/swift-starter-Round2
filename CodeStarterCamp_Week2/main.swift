//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [6, 14, 3, 5, 32, 33]

for _ in 1...5 {
    generateLottoWinningNumbers()
}

printLottoAllRoundInfo()

printLottoWinningNumbers()
printMatchingLottoResults(myLottoNumbers: myLottoNumbers)

printLottoRoundInfo(round: 3)
