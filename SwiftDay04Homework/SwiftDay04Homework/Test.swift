//
//  Test.swift
//  SwiftDay04Homework
//
//  Created by 박효진 on 2/4/25.
//

struct FunctionEx {
    
    func run() {
        
        print("run FunctionEx")
        example01(title: "더하기 예제")
        
    }
    
    
    func example01(title: String) {
        print("첫번쨰 예제는 \(title)입니다.")
        
        let value1 = 100
        let value2 = 150
        let total = add(x: value1, y: value2)
        print("\(value1) 더하기 \(value2)는 \(total)입니다.")
    }
    
    func add(x: Int, y: Int) -> Int {
        return x + y
    }
}

func getUserInfo() -> (name: String, age: Int) {
       print("이름을 입력하세요: ", terminator: "")
       let name = readLine() ?? ""

       print("나이를 입력하세요: ", terminator: "")
       let ageString = readLine() ?? "0"
       let age = Int(ageString) ?? 0

       return (name, age)
   }
