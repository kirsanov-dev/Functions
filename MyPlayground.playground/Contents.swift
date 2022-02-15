import UIKit

// myMap
let numbers = [1,2,3,4,5,6]
let increments = numbers.myMap { $0 * 100 }
print(increments)

let letters = ["a", "b", "c"]
let syllables = letters.myMap { $0 + "zz" }
print(syllables)

let milesToPoint = ["point1": 120.0, "point2": 50.0, "point3": 70.0]
let kmToPoint = milesToPoint.myMap({ name,miles in miles * 1.6093 })
print(kmToPoint)

// myFilter
let evenNumbers = numbers.myFilter { $0 % 2 == 0 }
print(evenNumbers)

// myReduce
let sum = numbers.myReduce(0, +)
print(sum)

// bubble sort
var intArray = [6, 35, 12, 1, 9, 23, 3]
var resultIntArray = bubbleSort(of: intArray)

var stringArray = ["a", "c", "g", "b"]
var anotherResultArray = bubbleSort(of: stringArray)

var emptyArray: [Int] = []
var resutlEmptyArray = bubbleSort(of: emptyArray)

// merge sort
var mergeSortedIntArray = mergeSort(of: intArray)
var mergeSortedStringArray = mergeSort(of: stringArray)
var mergeSortedEmptyArray = mergeSort(of: emptyArray)
