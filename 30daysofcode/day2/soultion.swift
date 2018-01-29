// Enter your code here. Read input from STDIN. Print output to STDOUT

var mealCost: Double
var tipPer: Int
var taxPer: Int

mealCost = Double(readLine()!)!
tipPer = Int(readLine()!)!
taxPer = Int(readLine()!)!

let tip = Double(tipPer) * mealCost / 100
let tax = Double(taxPer) * mealCost / 100

let totalCost = mealCost + tip + tax
print("The total meal cost is \(Int(totalCost.rounded())) dollars.")
