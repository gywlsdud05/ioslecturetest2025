//
//  ClassStructEx02.swift
//  SwiftDay08Lecture
//
//  Created by 박효진 on 2/7/25.
//

// Product 프로토콜 정의
protocol Product {
    func displayInfo()
}

// Car 클래스 구현
class Car: Product {
    var brand: String
    var model: String
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    func displayInfo() {
        print("\(brand) \(model)")
    }
}

// Book 클래스 구현 (구조체에서 클래스로 변경)
class Book: Product {
    var title: String
    var author: String
    
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
    
    func displayInfo() {
        print("\(title) by \(author)")
    }
}
func runClassStructEx02() {
    // 객체 생성
    let car = Car(brand: "Hyundai", model: "Sonata")
    let book = Book(title: "Swift Programming", author: "John Doe")
    
    // Product 타입의 배열에 Car와 Book 객체 저장
    let productList: [Product] = [car, book]
    
    // 다형성을 활용한 displayInfo() 메서드 호출
    for product in productList {
        product.displayInfo()
    }
    
}
