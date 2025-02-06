//
//  main.swift
//  SwiftDay07LectureOOP
//
//  Created by 박효진 on 2/6/25.
//

import Foundation
/*
class Car {
    // declare mamber fields
    var color: String
    var speed: Int
    // initialize function(constructor)
    init(color: String, speed: Int) {
        self.color = color
        self.speed = speed
    }
    // member method function - access object at outside
    func drive(){
        print("car of \(color) have \(speed)km/h")
    }
}

// create object and call member function
let sonata = Car(color: "black", speed: 110)
let grandeur = Car(color: "white", speed: 120)

// can it put on list?
let carList: [Car] = [sonata, grandeur]
let carList2: [Car] = [Car(color: "purple", speed: 90), Car(color: "blue", speed: 130)]
*/


class Shape {
    func draw() {
        print("도형을 그립니다.")
    }
}

class Circle: Shape {
    override func draw() {
        print("원을 그립니다.")
    }
}

class Rectangle: Shape {
    override func draw() {
        print("사각형을 그립니다.")
    }
}

// 도형 배열 생성 및 사용
let shapes: [Shape] = [Circle(), Rectangle()]

// 각 도형의 draw() 메서드 호출
for shape in shapes {
    shape.draw()
}



