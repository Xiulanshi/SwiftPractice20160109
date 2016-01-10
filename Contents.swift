//: Playground - noun: a place where people can play

import UIKit
/*
class BagelShop {

    var numberOfBagels: Int
    
    init(numberOfBagels: Int) {
        self.numberOfBagels = numberOfBagels
    }
    
    convenience init() {
        self.init(numberOfBagels: 5)
    }
    
    func isClosed() -> Bool {
        return numberOfBagels == 0
    }
    
    func processOrder(order: Order) {
        if !isClosed() && !order.isCompleted && order.numberOfBagels <= self.numberOfBagels {
        self.numberOfBagels = self.numberOfBagels - order.numberOfBagels
            order.isCompleted = true
        }
    }
    
}

class Customer {
    var order: Order
    
    init(order: Order) {
        self.order = order
    }
}

class Order {
    
    var numberOfBagels: Int
    var isCompleted: Bool
    
    init(numberOfBagels: Int) {

        self.numberOfBagels = numberOfBagels
        self.isCompleted = false
    }

    convenience init() {
        let defaultNumberOfBagels = 1
        self.init(numberOfBagels: defaultNumberOfBagels)
    }
    
}

let bagelShop = BagelShop(numberOfBagels: 10)

let order1 = Order(numberOfBagels: 8)

let customer = Customer(order: order1)

bagelShop.processOrder(customer.order)
print(bagelShop.numberOfBagels)

*/

class BagelShop {
    
    var numberOfBagels: Int
    var totalAmountMade: Double
    
    init(numberOfBagels: Int) {
        self.numberOfBagels = numberOfBagels
        self.totalAmountMade = 0
    }
    
    convenience init() {
        self.init(numberOfBagels: 5)
    }
    
    
    func isClosed() -> Bool {
        return numberOfBagels == 0
    }
    
    func processOrder(order: Order) {
        if !isClosed() && !order.isCompleted && order.numberOfBagels() <= self.numberOfBagels {
            self.numberOfBagels = numberOfBagels - order.numberOfBagels()
            self.totalAmountMade += order.totalPrice()
            order.isCompleted = true
            
            if isClosed() {
                print("totalAmoutMade is \(totalAmountMade)")
            }
        }
    }
    
}

class Customer {
    var order: Order
    
    init(order: Order) {
        self.order = order
    }
}

class Order {
    var isCompleted: Bool
    var bagels: [Bagel]
    
    init(bagels: [Bagel]) {
        
        self.isCompleted = false
        self.bagels = bagels
    }
    convenience init() {
        self.init(bagels: [])
    }
    
    func numberOfBagels() -> Int {
        return bagels.count
    }
    
    func totalPrice() -> Double {
        var totalPrice: Double = 0
        for bagel in bagels {
            totalPrice += bagel.price
        }
        return totalPrice
    }
    
}

class Bagel {
    let price = 1.50
    
    
}

let bagelShop = BagelShop(numberOfBagels: 5)
var bagels = [Bagel]()
for i in 0...5 {
    bagels.append(Bagel())
}

let order1 = Order(bagels: bagels)
let customer = Customer(order: order1)

bagelShop.processOrder(customer.order)
print(bagelShop.numberOfBagels)


//create a Bagel model
//price of each Bagel is 1.50
//Orders should have multiple bagels
//have a totalPrice for order
//    print out a sum of total money made after the bagelShop is closed
//


//func isPalindrome(word: String) -> Bool {
//    let wordLength = word.characters.count
//    for i in 0...wordLength/2 {
//        if (Array(word.characters)[i] != Array(word.characters)[wordLength - i - 1]){
//            return false
//        }
//    }
//    return true
//}

//func isPalindrome(word: String) -> Bool {
//    return String(word.characters.reverse()) == word
//}

//struct Stack<T> {
//    var items: [T]
//    mutating func push(element: T) {
//        items.append(element)
//    }
//    mutating func pop() -> T {
//        return items.removeLast()
//    }
//    
//    func count() -> Int {
//        return items.count
//    }
//}
//
//
//func isPalindrom(word: String) -> Bool {
//    
//    var stack = Stack<Character>(items: Array(word.characters))
//    var reverseStack = Stack<Character>(items: Array(word.characters).reverse())
//    for _ in 0..<stack.count() {
//        if stack.pop() != reverseStack.pop() {
//            return false
//        }
//    }
//    return true
//}
//
//print(isPalindrom("racecar"))
//print(isPalindrom("not"))

//func findMissingNumber(N:Int, list:[Int]) -> Int {
//    var totalSumOfNArray = 0
//    var totalSumOfList = 0
//    for i in 1...N {
//        totalSumOfNArray += i
//    }
//    for i in list {
//        totalSumOfList += i
//    }
//    return totalSumOfNArray - totalSumOfList
//}
//
//let arr = [1, 4, 6, 3, 2]
//let N = arr.count + 1
//
//findMissingNumber(N, list: arr)


//func findMissingNumber(N: Int, list: [Int]) -> Int {
//    list.sort({$0 < $1})
//    var j = 0
//    var missingNum = 0
//    for i in (0..<list.count) {
//        j = i + 1
//        if (j-1 != 1) {
//            missingNum = i + 1
//        }
//    }
//    return missingNum
//}
//
//let arr = [1, 4, 6, 3, 2]
//let N = arr.count + 1
//
//findMissingNumber(N, list: arr)

//func findMissingNumber(N: Int, list: [Int]) -> Int {
//    let totalSum = N * (N+1)/2
//    var totalSumOfList = 0
//    for i in list {
//        totalSumOfList += i
//    }
//    return totalSum - totalSumOfList
//
//}
//
//let arr = [1, 4, 6, 3, 2]
//let N = arr.count + 1
//
//findMissingNumber(N, list: arr)

//Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not

func hasDuplicates(arr: [Int]) -> Bool {
    var i = 0
    var j = 0
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            if i != j && arr[i] == arr[j] {
                return true
            }
        }
    }
    return false
}
//    let mySet = Set<Int>(arr)
//    let result = Array<Int>(mySet)
//    if result.count != arr.count {
//        return true
//    }
//    return false
//}

let arr = [1, 2, 3, 2]
hasDuplicates(arr)

/*

//Given two lists, find the smallest value that exists in both lists.
func getSmallestCommonValue(list1: [Int], list2: [Int]) -> Int? {
    var k = 0
    var l = 0
    for k in 0..<list1.count {
        for l in 0..<list2.count {
            if list1[k] == list2[l] {
                return list1[k]
            }
            return nil
        }
    }
    
    
    

    }
let list1 = [1, 2, 3]
let list2 = [2, 3, 5]
getSmallestCommonValue(list1, list2)





//Check to see if an integer is a palindrome don’t use casting
func isPalindrome(num: Int) -> Bool {
    return true
}
*/

