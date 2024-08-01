코드 스타터 캠프 2주차 미션을 위한 저장소입니다.

1. step 1
“Round2 첫번째 스텝 "로또 당첨번호 생성기 순서도 생성하기”\
순서도 및 설명입니다.

## 순서도
<img width="553" alt="image" src="https://github.com/user-attachments/assets/c80901e8-a27e-4c31-aa49-71476b1146bb">

## 순서도 설명
### 1~45에서 랜덤 숫자 추출 및 Set에 저장
- Int.random을 통해 랜덤 숫자 추출
- 로또 번호의 중복을 방지하기 위해서 Set 타입으로 로또 번호 저장

### Set의 count가 6개 인가?
- 6개의 랜덤함 숫자를 만들기 위하여  갯수를 6개로 제한하는 조건으로 while문을 실행
- Set 타입으로 저장하기에 번호 추출이 중복일 경우 다시 번호를 추출하기 위함

### 난수 6개 출력
- 반복문을 통해 얻은 랜덤 숫자 6개 출력


2. step 2 
“Round2 두번째 스텝 "내 번호와 맞추어보기!” \
기능구현 설명과 함께 PR드립니다!

## 순서도
<img width="297" alt="image" src="https://github.com/user-attachments/assets/2f39afc1-9132-4a38-9cbb-2c12a2f8a6d9">

## 기능구현
### compareLotto 함수
- 나의 로또 번호를 입력하며 로또번호를 생성하자마자 변수에 저장
- 나의 로또 번호와 로또번호를 체크하는 checkLotto()함수 실행
```swift
func compareLotto() {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    let lottoNumbers: [Int] = generateLottoNumbers()
    checkLotto(myLotto: myLottoNumbers, lotto: lottoNumbers)
}
```

### generateLottoNumbers 함수
- 로또번호를 전달하기 위해 임시로 변수 지정
- 로또번호는 6개 임으로 while문으로 6개인지 체크
- Int.random으로 1~45까지 숫자 출력후 number에 저장
- number가 lottoNumber에 있는지 파악후 겹칠 경우 반복문 재실행 없을 경우 번호 추가
- 6개 추가완료 시 전달
```swift
func generateLottoNumbers() -> [Int] {
    var lottoNumber: [Int] = []
    
    while lottoNumber.count < 6 {
        let number = Int.random(in: 1...45)
        
        if !lottoNumber.contains(number) {
            lottoNumber.append(number)
        }
    }
    return lottoNumber
}

```
### checkLotto 함수
- 나의 로또를 forEach를 통해서 입력되어있는 값 하나하나 생성된 로또와 비교
- 비교 후 result에 저장후 비지않은경우는 겹치는 번호가 있기에 result를 문자열로 변경후 출력양식 정의
- 비었을 경우 겹치는 번호가 없기에 "아쉽지만 겹치는 번호가 없습니다." 출력
```swift
func checkLotto(myLotto: [Int], lotto: [Int]) {
    var result: [Int] = []
    myLotto.forEach { number in
        if lotto.contains(number) {
            result.append(number)
        }
    }
    
    if !result.isEmpty {
        let resultString = result.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(resultString) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
```

3. step3
“Round2 마지막 스텝 "로또 당첨 번호를 회차별로 저장하고, 확인하자!” \
기능구현 설명입니다.

## 순서도
<img width="192" alt="image" src="https://github.com/user-attachments/assets/74435a00-703e-41bb-86e3-17e0d3d305dd">

## 기능구현
### lottoOutput 함수
- 총 5개의 로또 번호를 위해 while문으로 로또번호 생성 함수 generateLottoNumbers() 실행
- 생성 즉시 로또번호 저장 함수 storeLottoToDictionary()실행
- 저장된 로또번호를 출력하는 checkLottoNumbers()실행
```swift
func lottoOutput() {
    var roundNumber: Int = 1
    var lottoDict: [Int: [Int]] = [:]

    while roundNumber <= 5 {
        let lottoNumbers = generateLottoNumbers()
        storeLottoToDictionary(round: roundNumber, lottoNumbers: lottoNumbers, lottoDictionary: &lottoDict)
        roundNumber += 1
    }

    for round in 1..<roundNumber {
        checkLottoNumbers(round: round, lottoDictionary: lottoDict)
    }
}
```
### generateLottoNumbers 함수
- Int.random으로 1~45까지 랜덤 숫자 생성
- 로또번호 임시 저장변수에 해당 숫자가 있는지 확인후 없을 경우 추가
```swift
func generateLottoNumbers() -> [Int] {
    var lottoNumbers: [Int] = []
    
    while lottoNumbers.count < 6 {
        let number = Int.random(in: 1...45)
        
        if !lottoNumbers.contains(number) {
            lottoNumbers.append(number)
        }
    }
    return lottoNumbers
}
```

### storeLottoToDictionary 함수
- 전달받은 업데이트될 회차 번호 포멧을 적용 후 전달받은 로또번호 저장
```swift
func storeLottoToDictionary(round: Int, lottoNumbers: [Int], lottoDictionary: inout [Int: [Int]]) {
    lottoDictionary[round] = lottoNumbers
}
```
### checkLottoNumbers 함수
- 확인할 회차 번호 포멧을 적용 후 딕셔너리에 검색후 lottoNumbers에 임시 저장
- 회차 정보가 있는 경우 저장된 번호를 string으로 변환후 포맷 적용 및 출력
- 회차 정보가 없는 경우 "해당 회차 정보가 없습니다. 출력
```swift
func checkLottoNumbers(round: Int, lottoDictionary: [Int: [Int]]) {
    
    if let lottoNumbers = lottoDictionary[round] {
        let lottoStrings = lottoNumbers.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(lottoStrings) 입니다.")
    } else {
        print("해당 회차 정보가 없습니다.")
    }
}
```
