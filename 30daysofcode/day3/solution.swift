
import Foundation

let number = Int(readLine()!)!

if number % 2 != 0{
    print("Weird")
} else {
    if number < 5 {
        print ("Not Weird")
    } else if number > 20 {
        print("Not Weird")
    } else {
        print("Weird")
    }
}
