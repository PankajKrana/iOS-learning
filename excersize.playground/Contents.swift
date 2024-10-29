import Cocoa

var greeting = "Hello, playground"


//for i in 0..<5 {
//    print(5 * i)
//}

//let a: Int = 4
//let d: Int = 2
//

func displayArithmeticProgression(a: Int, d: Int, n: Int) {
    for i in 0..<n {
        print(a + i * d)
    }

}



displayArithmeticProgression(a: 5, d: 5, n: 5)
