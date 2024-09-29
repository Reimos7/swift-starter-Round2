//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Reimos on 9/29/24.
//

func makeLottoNumbers()  {
    
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

    var randomLottoArray: [Int] = []
    
    while randomLottoArray.count < 7 {
        
        let randomLottoNumbers = Int.random(in: 1...45)
        randomLottoArray.append(randomLottoNumbers)
        
    }
    
    if myLottoNumbers == randomLottoArray {
        print("축하합니다! 겹치는 번호는 \(randomLottoArray) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    
}





