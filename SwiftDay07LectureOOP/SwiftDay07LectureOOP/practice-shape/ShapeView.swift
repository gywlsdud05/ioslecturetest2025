//
//  ShapeView.swift
//  SwiftDay07LectureOOP
//
//  Created by 박효진 on 2/6/25.
//



// 도형 배열 생성 및 사용
//let shapes: [Shape] = [Circle(), Rectangle()]

// 각 도형의 draw() 메서드 호출
//for shape in shapes {
//    shape.draw()
//}

class ShapeView{
    // declare Array
    // create void array
    // let shapeList = [Shape]()
    // 선과 동시에 initialize
    // let shapeList = [Circle(),Rectangle(),Circle(),Circle()]
    // add data at void array : use apppend()
    var shapeList: [Shape]
    
    init() {
        // init() function for initialize
        shapeList = [Circle(), Rectangle()]
    }
    
    func showList(){
        for shape in shapeList {
            shape.draw()
        }
    }
    func appendShape(choice: Int) {
        switch choice {
            case 1:
                shapeList.append(Circle())
            case 2:
                shapeList.append(Rectangle())
            default:
                print("Invalid choice")
            }
    }
    func main(){
        // 5회 반복 Shape 생성
         // 1번째 생성 할 객체 타입 선택 (1)Circle (2)Rectangle: 1
         // 리스트에 Circle 객체 추가 완료!
         // 2번째 생성 할 객체 타입 선택 (1)Circle (2)Rectangle: 2
         // 리스트에 Rectangle 객체 추가 완료!
         // 3번째 생성 할 객체 타입 선택 (1)Circle (2)Rectangle:
         
         
         for i in 1...5 {
             print("\(i)번째 생성 할 객체 타입 선택 (1)Circle (2)Rectangle", terminator: ": ")
             let choice: Int = Int(readLine() ?? "") ?? 0
             appendShape(choice: choice)
         }
         
        
        showList()
    }

    
    
}

