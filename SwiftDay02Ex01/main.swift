//
//  main.swift
//  SwiftDay02Ex01
//
//  Created by 박효진 on 1/23/25.
//

import Foundation

// 한 줄 주석

/*
 여러 줄 주석
 */

/*
    /*
 중첩 여러 줄 주석
    */
 */



// 단문 복문, 한 줄에 복문 작성시 ; 사용

//let 안녕 = "안녕하세요."
//var hello = "Hello, world!"

//print(hello, terminator: "")
//print(안녕)

// 변수는 값 변경 가능

//hello = "안녕 세상"
//print(hello, terminator: "\n")

// \n newline \t tab \r carriage return \a alert
// default로 termineator: "\n" 이 포함

// readLine()

// 성명과 나이를 입력받아서 출력하는 예제
// age의 5yr after age를 출력
// 성명 상수, age as variable

// 변수,상수는 맨 위에 선언이 일반적
//var name: String = ""
//var age: Int = 0
//
//print("input name", terminator: "")
//name = readLine() ?? ""
//print("input age", terminator: "")
//age = Int(readLine() ?? "0") ?? 0
//
//
//// variable can change value
//age = age + 5
//
//print("\(name) is \(age) yr old.")


// check value of optional (unwrapping)
//
//var name: String? = nil
//
//name = "baom"

// let userName = name!
//let userName = name ?? "no name"
////print("name is" + userName +".")
//if let userName = name {
//    print("name is "+userName+".")
//} else {
//print("name is not number")
//}

// if 조건문 사용 방법

/*
식별자를 선언할때 모든 문자 사용 가능. 단, 특수문자, 공백, 숫자로 시작 하지 말기
의사코드 (정해진 규칙은 없다. 논리적으로 내 나름대로 작성)
1. 나이를 입력 받는다.
  1.1 age 변수 선언
  1.2 "나이 입력" 지문
  1.3 나이를 입력 받는다.
2. 나이가 18보다 크면 "성인"이라고 출력. (18 초과)
3. 나이가 18이하면 "미성년"이라고 출력. (이하)
*/

// 프로그래머스 사이트의 문제 풀어보기

// 의사 코드

//var age: Int = 0
//
//print("input age: ", terminator: "")
//age = Int(readLine() ?? "0") ?? 0
//
//if age > 18{
//    print("\(age)이고 성인입니다")
//}else{
//    print("\(age) 이고 미성년입니다")
//}

// 의사 코드
/*
 
각각 다른 정수 3개 입력1.1 변수 선언: num1, num2, num31.2 정수 3개 순서대로 입력 (오셔널 언랩핑 한다)
각각 비교해서 제일큰수, 중간수, 작은수를 판별한다.2.1 결과 변수 선언: 큰수(max), 중간(mid), 작은수(min)2.2 입력 받은 수중 2개를 비교해서 큰것은 max에 저장2.3 작은 것은 min에 저장2.4 입력 받은 나머지 수를 max나 min과 비교2.4.1 max보다 크다면 기존 max는 min이 되고 나머지 숫가자 max2.4.2 max보다 작다면 min과 비교하고 min보다 작다면 나머지가 min 기존 min은 mid2.4.3 max보다 크지 않고 min 보다 작지 않담년 나머지 숫자가 mid
max, mid, min을 순서대로 출력한다.*/

/*
// 입력 받을 변수 선언 또는 let으로 선언해서 상수로 받을 수 있다.
var num1:Int?, num2:Int?, num3:Int?
var max = 0;
var mid = 0;
var min = 0;

// 입력 (언랩핑)
print("각각 다른 정수 3개 입력: ", terminator: "")
num1 = Int(readLine() ?? "0") ?? 0
num2 = Int(readLine() ?? "0") ?? 0
num3 = Int(readLine() ?? "0") ?? 0

print("입력 받은 정수는 \(num1!), \(num2!), \(num3!) 입니다.")

if num1! > num2! {
    max = num1!
    min = num2!
} else {
    max = num2!
    min = num1!
}

// 비교하지 않은 나머지 숫자인 num3을 max와 min과 각각 비교
if max < num3! {
    mid = max
    max = num3!
} else if min > num3! {
    mid = min
    min = num3!
} else {
    mid = num3!
}

print("max:\(max), mid:\(mid), min:\(min)")
*/

//- 사용자가 입력한 성적에 따라 학점을 출력하세요.
//- 학점 기준:
//    - 90점 이상: A
//    - 80점 이상 90점 미만: B
//    - 70점 이상 80점 미만: C
//    - 60점 이상 70점 미만: D
//    - 60점 미만: F

//print("점수를 입력하세요:")
//if let input = readLine(), let score = Int(input) {
//    switch score {
//    case 90...100:
//        print("학점: A")
//    case 80..<90:
//        print("학점: B")
//    case 70..<80:
//        print("학점: C")
//    case 60..<70:
//        print("학점: D")
//    default:
//        print("학점: F")
//    }
//} else {
//    print("유효한 숫자를 입력하세요.")
//}
//
//
//print("점수를 입력하세요:")
//if let input = readLine(), let score = Int(input) {
//    switch score {
//    case 90...100:
//        print("학점: A")
//    case 80..<90:
//        print("학점: B")
//    case 70..<80:
//        print("학점: C")
//    case 60..<70:
//        print("학점: D")
//    default:
//        print("학점: F")
//    }
//} else {
//    print("유효한 숫자를 입력하세요.")
//}
//
//let size = 10
//var total: Int = 0
//for num in 1...size{print("\(num)", terminator: num < 10 ? " + " : "=")
//total += num
//}
//print(total)


var total = 0

for number in 1...10{
    total += number
}

print(total)

