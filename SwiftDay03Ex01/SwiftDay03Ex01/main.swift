//
//  main.swift
//  SwiftDay03Ex01
//
//  Created by 박효진 on 1/24/25.
//

// 높다 낮다 게임 구현
// Step 01
// 시스템이 1~100 사이의 난수를 발생.
// 사용자가 정답을 입력해서 맞추는 프로그램.
// 6회 시도 안에 맞추는 프로그램.
// Step 02
// 한 게임이 끝나면 재시도 여부 물어 보기
// 재시도 하면 모든 변수가 초기화 되면서 다시 시작.

import Foundation

// 높다 낮다 게임 구현
// Step 01
// 시스템이 1~100 사이의 난수를 발생.
// 사용자가 정답을 입력해서 맞추는 프로그램.
// 6회 시도 안에 맞추는 프로그램.
// Step 02
// 한 게임이 끝나면 재시도 여부 물어 보기
// 재시도 하면 모든 변수가 초기화 되면서 다시 시작.

import Foundation

//print("높다 낮다 게임")
//
//// 난수 발생기
//// 카멜케이스 myName <---> 스네이크케이스 my_name
//var min = 1
//var max = 100
//var sysNum = Int.random(in: min...max)
//var userNum = 0
//
//print("시스템이 (min)~(max)사이의 번호를 하나 선택했습니다. (힌트: (sysNum))")
//print("6회 시도 안에 정답을 맞춰 보세요.")
//// 사용자 번호를 userNum에 입력 받기 - readLine()
//// userNum과 sysNum 비교 - if ~ else 문
//// 정답인지 아닌지 표시 하기 - print()


//func playHighLowGame() {
//    print("🎮 높다 낮다 게임  🎮")
//    
//    var isPlaying = true
//    
//    while isPlaying {
//        let answer = Int.random(in: 1...100) // 1~100 사이의 난수 생성
//        var attempts = 6 // 최대 시도 횟수
//        var isCorrect = false
//        
//        print("1부터 100 사이의 숫자를 맞춰보세요! (최대 \(attempts)회 시도 가능)")
//        
//        while attempts > 0 {
//            print("남은 시도 횟수: \(attempts)")
//            print("숫자를 입력하세요: ", terminator: "")
//            
//            if let input = readLine(), let guess = Int(input) {
//                if guess == answer {
//                    print("🎉 정답입니다! 숫자는 \(answer)였습니다! 🎉")
//                    isCorrect = true
//                    break
//                } else if guess < answer {
//                    print("📉 더 높은 숫자입니다!")
//                } else {
//                    print("📈 더 낮은 숫자입니다!")
//                }
//                attempts -= 1
//            } else {
//                print("⚠️ 잘못된 입력입니다. 숫자를 입력해주세요.")
//            }
//        }
//        
//        if !isCorrect {
//            print("😢 실패했습니다. 정답은 \(answer)였습니다.")
//        }
//        
//        // 재시도 여부 묻기
//        print("게임을 다시 하시겠습니까? (y/n): ", terminator: "")
//        if let retryInput = readLine()?.lowercased(), retryInput == "y" {
//            print("게임을 재시작합니다! 🔄")
//        } else {
//            print("게임을 종료합니다. 감사합니다! 👋")
//            isPlaying = false
//        }
//    }
//}
//
//// 게임 실행
//playHighLowGame()

//print("높다 낮다 게임")
//
//let answer = Int.random(in: 1...100)
//var attempts = 6
//
//while attempts > 0 {
//    print("남은 시도 횟수: \(attempts)")
//    print("숫자를 입력: ", terminator: "")
//    let input = Int(readLine() ?? "0") ?? 0
//
//    if input == answer {
//        print("정답 숫자는 \(answer)")
//        break
//    } else if input < answer {
//        print("더 높은 숫자")
//    } else {
//        print("더 낮은 숫자")
//    }
//    attempts -= 1
//}
//
//if attempts == 0 {
//    print("실패. 정답은 \(answer)")
//}

import Foundation

print("높다 낮다 게임")
var isPlaying = true
while isPlaying {
    let answer = Int.random(in: 1...100)
    var attempts = 6
    var isCorrect = false
    var tryCount = 0
    
    print("1부터 100 사이의 숫자를 맞추시오 (\(attempts)회 시도 가능)")
    
    while attempts > 0 {
        print("남은 시도 횟수: \(attempts)")
        print("숫자를 입력하시오: ", terminator: "")
        
        let input = Int(readLine() ?? "0") ?? 0
        
        if input < 1 || input > 100 {
            print("1부터 100 사이의 숫자를 입력하시오")
            continue
        }
        
        tryCount += 1
        if input == answer {
            print("정답 숫자는 \(answer)")
            print("\(tryCount)회 만에 맞춤")
            isCorrect = true
            break
        } else if input < answer {
            print("더 높은 숫자")
        } else {
            print("더 낮은 숫자")
        }
        attempts -= 1
    }
    
    if !isCorrect {
        print("실패 정답은 \(answer)")
    }

    var retryInput: String?
    repeat {
        print("y 또는 n을 입력하시오: ", terminator: "")
        retryInput = readLine()?.lowercased()
        
        if retryInput != "y" && retryInput != "n" {
            print("잘못된 입력. 다시 입력하시오")
        }
    } while retryInput != "y" && retryInput != "n"
    
    if retryInput == "y" {
        print("게임을 재시작")
    } else {
        print("게임을 종료")
        isPlaying = false
    }
}


    

