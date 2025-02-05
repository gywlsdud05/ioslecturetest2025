//
//  main.swift
//  SwiftDay06proj
//
//  Created by 박효진 on 2/5/25.
//

import Foundation

print("Hello, World!")

// 전화번호부를 저장할 딕셔너리
var phoneBook = [String: String]()

// CRUD 기능을 구현한 전화번호부 구조체
struct ContactManager {
    // 연락처 추가
    static func add(_ name: String, _ number: String) {
        phoneBook[name] = number
        print("\(name) 연락처가 추가되었습니다.")
    }
    
    // 전체 연락처 보기
    static func list() {
        guard !phoneBook.isEmpty else {
            print("연락처가 비어있습니다.")
            return
        }
        
        phoneBook.forEach { name, number in
            print("📞 \(name): \(number)")
        }
    }
    
    // 연락처 검색
    static func search(_ name: String) {
        guard let number = phoneBook[name] else {
            print("❌ \(name)을(를) 찾을 수 없습니다.")
            return
        }
        
        print("📱 \(name): \(number)")
    }
    
    // 연락처 수정
    static func update(_ name: String, _ newNumber: String) {
        guard phoneBook[name] != nil else {
            print("❌ \(name)을(를) 찾을 수 없습니다.")
            return
        }
        
        phoneBook[name] = newNumber
        print("✅ \(name)의 번호가 수정되었습니다.")
    }
    
    // 연락처 삭제
    static func delete(_ name: String) {
        guard phoneBook.removeValue(forKey: name) != nil else {
            print("❌ \(name)을(를) 찾을 수 없습니다.")
            return
        }
        
        print("🗑️ \(name)이(가) 삭제되었습니다.")
    }
}

// 사용자 인터페이스
func showMenu() {
    print("""
    
    📱 전화번호부 📱
    1. 연락처 추가
    2. 연락처 목록
    3. 연락처 검색
    4. 연락처 수정
    5. 연락처 삭제
    0. 종료
    
    선택: 
    """, terminator: "")
}

func runPhoneBook() {
    while true {
        showMenu()
        guard let choice = Int(readLine() ?? "") else {
            print("올바른 숫자를 입력해주세요.")
            continue
        }
        
        switch choice {
        case 0:
            print("프로그램을 종료합니다.")
            return
            
        case 1:
            print("이름을 입력하세요: ", terminator: "")
            let name = readLine() ?? ""
            print("전화번호를 입력하세요: ", terminator: "")
            let number = readLine() ?? ""
            ContactManager.add(name, number)
            
        case 2:
            ContactManager.list()
            
        case 3:
            print("검색할 이름을 입력하세요: ", terminator: "")
            let name = readLine() ?? ""
            ContactManager.search(name)
            
        case 4:
            print("수정할 이름을 입력하세요: ", terminator: "")
            let name = readLine() ?? ""
            print("새로운 전화번호를 입력하세요: ", terminator: "")
            let newNumber = readLine() ?? ""
            ContactManager.update(name, newNumber)
            
        case 5:
            print("삭제할 이름을 입력하세요: ", terminator: "")
            let name = readLine() ?? ""
            ContactManager.delete(name)
            
        default:
            print("올바른 메뉴를 선택해주세요.")
        }
    }
}

// 프로그램 실행
runPhoneBook()
