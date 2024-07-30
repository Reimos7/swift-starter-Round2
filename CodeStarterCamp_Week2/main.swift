//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// MARK: - Step 2: 내 번호와 맞추어보기!
// 사용자의 로또 번호 초기화
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
// 찍은 번호와 로또 당첨 번호 의 겹치는 숫자를 확인하는 함수 호출
playLottoGame(myLottoNumbers: myLottoNumbers)


// MARK: - Step 3: 로또 당첨번호를 회차별로 저장하고, 확인하자!
// 로또 번호 5번 생성하고 저장
generateAndSaveLottoNumbers(rounds: 5)

// 특정 회차의 로또 번호 확인 1~5
printSpecificLottoNumbers(round: 3)

