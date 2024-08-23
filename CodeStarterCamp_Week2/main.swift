//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let lottoGenerator = LottoNumberGenerator()
let winningNumbers = lottoGenerator.generateWinningNumbers()
print("당첨 번호: \(winningNumbers)")
