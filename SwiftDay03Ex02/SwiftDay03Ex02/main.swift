//
//  main.swift
//  SwiftDay03Ex02
//
//  Created by 박효진 on 1/24/25.
//

import Foundation

//print("Hello, World!")
//
//import Foundation
//
//print("Hello, World!")
//
//var arr: [Int] = []
//let arr2: [Int] = [33,44,56,78]
//
//arr.append(100) // arr[0]
//arr.append(101) // arr[1]
//arr.append(102) // arr[2]
//arr.append(103) // arr[3]
//
//print(arr)
//// for in문을 이용한 내용 확인
//// 배열 요소의 수 만큼 자동 반복
//for number in arr {
//    print(number, terminator: " ")
//}
//print()
//
//// 2번 index의 요소 제거
//arr.remove(at: 2)
//print(arr)
//
//// 1번 index의 요소 확인
//print(arr[1])

//let monthDays: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
//
//print("날짜 수를 알고자 하는 달 입력: ", terminator: "")
//if let month = Int(readLine() ?? ""), month >= 1, month <= 12 {
//   print("\(month)월은 \(monthDays[month - 1])일까지 있다.")
//} else {
//   print("1에서 12 사이의 숫자를 입력하세요.")
//}
//
//
//var totalDays = 0
//for day in monthDays{
//    totalDays += day
//}
//print("1년은 \(totalDays)일 까지 있다")
//


//let monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
//
//// 월 입력 받기
//print("월 입력: ", terminator: "")
//guard let month = Int(readLine() ?? ""),
//     month >= 1 && month <= 12 else {
//    print("올바른 month를 입력하세요.")
//    exit(0)
//}
//
//// 일 입력 받기
//print("일 입력: ", terminator: "")
//guard let day = Int(readLine() ?? ""),
//     day >= 1 && day <= monthDays[month - 1] else {
//    print("올바른 day를 입력하세요.")
//    exit(0)
//}
//
//// 100일 후 계산하기
//var resultMonth = month
//var resultDay = day
//
//// 현재 날짜부터 하루씩 더하면서 계산
//for _ in 1...100 {
//    resultDay += 1
//    
//    // 현재 월의 마지막 날을 넘어가면 다음 달로 이동
//    if resultDay > monthDays[resultMonth - 1] {
//        resultDay = 1
//        resultMonth += 1
//        
//        // 12월을 넘어가면 1월로 돌아감
//        if resultMonth > 12 {
//            resultMonth = 1
//        }
//    }
//}
//
//print("\(month)월 \(day)일의 100일 후는 \(resultMonth)월 \(resultDay)일입니다.")

// 전화번호부를 저장할 딕셔너리
//var phoneBook = [String: String]()
//
//// CRUD 기능을 구현한 전화번호부 구조체
//struct ContactManager {
//    // 연락처 추가
//    static func add(_ name: String, _ number: String) {
//        phoneBook[name] = number
//        print("\(name) 연락처가 추가되었습니다.")
//    }
//    
//    // 전체 연락처 보기
//    static func list() {
//        guard !phoneBook.isEmpty else {
//            print("연락처가 비어있습니다.")
//            return
//        }
//        
//        phoneBook.forEach { name, number in
//            print("📞 \(name): \(number)")
//        }
//    }
//    
//    // 연락처 검색
//    static func search(_ name: String) {
//        guard let number = phoneBook[name] else {
//            print("❌ \(name)을(를) 찾을 수 없습니다.")
//            return
//        }
//        
//        print("📱 \(name): \(number)")
//    }
//    
//    // 연락처 수정
//    static func update(_ name: String, _ newNumber: String) {
//        guard phoneBook[name] != nil else {
//            print("❌ \(name)을(를) 찾을 수 없습니다.")
//            return
//        }
//        
//        phoneBook[name] = newNumber
//        print("✅ \(name)의 번호가 수정되었습니다.")
//    }
//    
//    // 연락처 삭제
//    static func delete(_ name: String) {
//        guard phoneBook.removeValue(forKey: name) != nil else {
//            print("❌ \(name)을(를) 찾을 수 없습니다.")
//            return
//        }
//        
//        print("🗑️ \(name)이(가) 삭제되었습니다.")
//    }
//}
//
//// 사용자 인터페이스
//func showMenu() {
//    print("""
//    
//    📱 전화번호부 📱
//    1. 연락처 추가
//    2. 연락처 목록
//    3. 연락처 검색
//    4. 연락처 수정
//    5. 연락처 삭제
//    0. 종료
//    
//    선택: 
//    """, terminator: "")
//}
//
//func runPhoneBook() {
//    while true {
//        showMenu()
//        guard let choice = Int(readLine() ?? "") else {
//            print("올바른 숫자를 입력해주세요.")
//            continue
//        }
//        
//        switch choice {
//        case 0:
//            print("프로그램을 종료합니다.")
//            return
//            
//        case 1:
//            print("이름을 입력하세요: ", terminator: "")
//            let name = readLine() ?? ""
//            print("전화번호를 입력하세요: ", terminator: "")
//            let number = readLine() ?? ""
//            ContactManager.add(name, number)
//            
//        case 2:
//            ContactManager.list()
//            
//        case 3:
//            print("검색할 이름을 입력하세요: ", terminator: "")
//            let name = readLine() ?? ""
//            ContactManager.search(name)
//            
//        case 4:
//            print("수정할 이름을 입력하세요: ", terminator: "")
//            let name = readLine() ?? ""
//            print("새로운 전화번호를 입력하세요: ", terminator: "")
//            let newNumber = readLine() ?? ""
//            ContactManager.update(name, newNumber)
//            
//        case 5:
//            print("삭제할 이름을 입력하세요: ", terminator: "")
//            let name = readLine() ?? ""
//            ContactManager.delete(name)
//            
//        default:
//            print("올바른 메뉴를 선택해주세요.")
//        }
//    }
//}
//
//// 프로그램 실행
//runPhoneBook()


