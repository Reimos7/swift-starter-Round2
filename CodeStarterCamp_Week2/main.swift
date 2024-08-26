//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


let myLottoNumbers: Set<Int> = [23, 14, 33, 56, 43, 10]
checkLottoResult(myEnteredLottoNumber: myLottoNumbers)


for _ in 1...5 {
    lottoRoundSave()
}

printLottoRound(round: 2)

