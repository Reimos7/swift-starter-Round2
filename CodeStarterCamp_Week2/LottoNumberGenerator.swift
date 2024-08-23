//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by 정한솔 on 8/23/24.
//

import Foundation

class LottoNumberGenerator {
    var arrLottoNumber: [Int] = []
    
    func getLottoNumber() {
        let lottoNumber = Int.random(in: 1...45)
        
        if !arrLottoNumber.contains(lottoNumber) {
            addLottoNumber(lottoNumber: lottoNumber)
        }
    }
    
    func addLottoNumber(lottoNumber: Int) {
        arrLottoNumber.append(lottoNumber)
    }
    
    func generateWinningNumbers() -> [Int] {
        while arrLottoNumber.count < 6 {
            getLottoNumber()
        }
        
        return arrLottoNumber
    }
}
