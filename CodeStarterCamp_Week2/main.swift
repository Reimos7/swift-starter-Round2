//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let lottoGenerator = LottoNumberGenerator()
let myLottoNumbers: [Int] = [6, 14, 3, 5, 32, 33]

lottoGenerator.printLottoWinningNumbers()
checkMatchingNumbers(myLottoNumbers: myLottoNumbers, winningNumbers: lottoGenerator.winningNumbers, bonusNumber: lottoGenerator.bonusNumber)
