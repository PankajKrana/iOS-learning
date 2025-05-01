import Foundation


let MAX = 100
for i in 0..<MAX {
    // if multiple of 3 then print fizz
    if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}




