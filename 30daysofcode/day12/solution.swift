
class Person{
    var firstName: String
    var lastName: String
    var id: Int
    
    // init
    init(firstName: String, lastName: String, identification: Int){
        self.firstName = firstName
        self.lastName = lastName
        self.id = identification
    }
    // print individual data
    func printPerson{
        print("Name: \(self.lastName), \(self.firstName)")
        print("ID: \(self.id)")
    }
}

// Class Student

class Student: Person{
    var testScores: [Int]
    
    init(firstName: String, lastName: String, identification: Int, scores: [Int]){
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, identification: identification)
    }
    
    // calculate method
    
    func calculate() -> Character {
        var total = 0;
        
        for testScores in testScores{
            total += testScores
        }
        
        let avg = total / testScores.count;
        
        if avg >= 90 && avg <= 100 {
            return "O"
        }
        if avg >= 80 && avg < 90 {
            return "E"
        }
        if avg >= 70 && avg < 80 {
            return "A"
        }
        if avg >= 55 && avg < 70 {
            return "P"
        }
        if avg >= 40 && avg < 55 {
            return "D"
        }
        return "T"
    }
    
}

// End of class Student
let nameAndID = readLine()!.characters.split(" ").map {
    String($0)
}
let scoreCount = readLine()
let scores = readLine()!.characters.split(" ").map {
    Int(String($0))!
}

let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], identification: Int(nameAndID[2])!, scores: scores)

s.printPerson()

print("Grade: \(s.calculate())")
    }
}
