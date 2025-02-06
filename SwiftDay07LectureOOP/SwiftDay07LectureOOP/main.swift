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

//let shapes: [Shape] = [Circle(), Rectangle()]
//for item in shapes {
//    item.draw()
//}
let view = ShapeView()
view.main()




