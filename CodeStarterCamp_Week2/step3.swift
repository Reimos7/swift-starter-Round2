//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Reimos on 10/11/24.
//



func makeLottoDraw(_ choice: Int)  {
    
    var lottoDictionary: [Int: [Int]] = [:]
    var randomLottoArray: [Int] = []
    
    while randomLottoArray.count < 6 {
        let randomLottoNumbers = Int.random(in: 1...45)
        randomLottoArray.append(randomLottoNumbers)
    }
    
    for i in 1...5 {
        lottoDictionary[i] = randomLottoArray
    }
    
    guard let lottoDic = lottoDictionary[choice] else {return}
    
    
    print("\(choice)회차의 로또 당첨 번호는 \(lottoDic) 입니다.")
    
}
