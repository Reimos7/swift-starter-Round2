코드 스타터 캠프 2주차 미션을 위한 저장소입니다.

1. step 1
“Round2 첫번째 스텝 "로또 당첨번호 생성기 순서도 생성하기”\
순서도 및 설명입니다.

## 순서도
<img width="533" alt="스크린샷 2024-07-13 오전 3 41 59" src="https://github.com/user-attachments/assets/62a5a5c6-4b7c-4ad8-b32f-d11e0a9f486f">

## 순서도 설명
### lotto: Set<Int> 선언
- 로또 번호의 중복을 방지하기 위해서 Set 타입으로 정의하였습니다.

### while lotto.count < 6
- 6개의 랜덤함 숫자를 추가시키기 위하여 lotto의 갯수를 6개로 제한하는 조건으로 while문을 실행하였습니다.
- while문을 실행할 시 특정 범위 내에 랜덤 숫자를 뽑는 Int.random(범위)를 활용하여 1에서 45까지 랜덤한 숫자 추출 후 lotto에 insert로 추가

### "\(lotto)" 출력
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
