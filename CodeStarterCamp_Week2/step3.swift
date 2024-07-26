//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by wodnd on 7/19/24.
//
import Foundation

func generateLotto() -> [Int] {
    var lottoNum: [Int] = []
    
    while lottoNum.count < 6 {
        let num = Int.random(in: 1...45)
        
        if !lottoNum.contains(num) {
            lottoNum.append(num)
        }
    }
    return lottoNum
}

func storeLotto(roundNum: Int, lotto: [Int], lottoDict: inout [String: [Int]]) {
    let roundStr: String = "\(roundNum)회차"
    lottoDict[roundStr] = lotto
}

func checkLotto(round: Int, lottoDict: [String: [Int]]) {
    let roundStr: String = "\(round)회차"
    
    if let lottoNum = lottoDict[roundStr] {
        let lottoStr = lottoNum.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(lottoStr) 입니다.")
    } else {
        print("해당 회차 정보가 없습니다.")
    }
}

func lottoDict() {
    print("로또 번호 생성기")
    print("회차 검색: ", terminator: "")
    let roundInput = readLine()
    var roundNum: Int = 1
    var lottoDict: [String: [Int]] = [:]

    while roundNum <= 5 {
        let lottoNumbers = generateLotto()
        storeLotto(roundNum: roundNum, lotto: lottoNumbers, lottoDict: &lottoDict)
        roundNum += 1
    }

    if let input = roundInput, let inputRound = Int(input) {
        checkLotto(round: inputRound, lottoDict: lottoDict)
    }
}
