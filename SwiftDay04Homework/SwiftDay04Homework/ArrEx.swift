//
//  main.swift
//  SwiftDay04Homework
//
//  Created by 박효진 on 2/4/25.
//

import Foundation

struct ArrEx {
    func run() {
        arrayLiteralTest()
    }
    func arrayLiteralTest() {
        // 배열 선언 및 초기화.
        // 1) 빈 배열 생성 - String 타입의 빈 배열을 생성합니다.
        var emptyArray: [String] = []
        var emptyArray2 = [String]() // 타입 추론 사용
        
        // 2) 기본 값을 가진 배열 생성
        // ""(빈 문자열)을 5개 가진 배열을 생성합니다.
        var arr2: [String] = Array(repeating: "", count: 5)
        // ["", "", "", "", ""]
        
        // 3) 배열 리터럴을 사용한 초기화
        var fruits: [String] = ["Apple", "Banana", "Cherry"]
        
        print(emptyArray)
        print(emptyArray2)
    }
}
