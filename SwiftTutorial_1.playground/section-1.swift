// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let tutorailTeam = 56
let editorailTeam = 23
var totalTeam = tutorailTeam + editorailTeam

totalTeam += 1
let princeIntInferred = -19
let princeIntExplicit:Int = -19

let priceInferred = 19.99
let princeExplicit:Double = -19.99

let princeFloatInferred = -19.99
let priceExplicit:Float = -19.99

let onSaleInferred = true
let onSaleEcplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopie Cushion"


var shoppingList = ["Egg","Milk"]
var shoppingListExplicit:[String] = ["Egg","Milk"]
println("The shopping list contrain \(shoppingList.count) item.")
shoppingList.append("Flour")
shoppingList += ["Baking Power"]
shoppingList += ["Chocolate spread","Cheese","Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
// shoppingList[0..3] = ["Banana","Apples"]
shoppingList

if(onSaleInferred){
    println("\(nameInferred) on sale for \(priceInferred)!")
}
else {
    println("\(nameInferred) at regular prince: \(priceInferred)!")
}

let prossibleTipsInferred = [0.15,0.18,0.20]
let prossibleTipsExplicit:[Double] = [0.5,0.18,0.20]
let numberofItems = prossibleTipsInferred.count


println(" \(numberofItems) ")



var array1 = ["abc","bcd","cde"]
for (var i = 0; i < array1.count;i++){
    println(array1[i])
}

var array2 = ["a","b","c"]
var str2 = ""
println(" Size array = \(array2.count) ")
for str2 in array2 {
    println(str2)
}


let array: Array<Int> = [1,2,3,4]
let dictionary: Dictionary<String,Int> = ["dog":1,"elephant":2]

var airports:[String: String] = ["TYO": "Tokyo","DUB": "Dublin"]

if airports.isEmpty {
    println("The airports dictionary is empty.")
}
else {
    println("The airports dictionary is not empty.")
}


// prints "The airports doctionary is not empty."

println("The airports dictionary contains \(airports.count) items.")
// prints "The airports dictionary contains 2 items."


//-------------- Update and Add value Dictionary -----------------//

airports["LHR"] = "London"
// the airports dictionary now contains 3 items.

airports["LHR"] = "London Heathrow"
// the value for "LHR" has been changed to "London Heathrow"

if let oldValue = airports.updateValue("Dublin International", forKey: "DUB"){
    println("the old value for dub was \(oldValue). ")
}

// prints "The old value for DUB was Dublin"

//-------------- Remove value Dictionary  ------------------//




