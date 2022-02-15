import Foundation

// Best Time Complexity: O(n)
// Worst Time Complexity: O(n2)

public func bubbleSort<T: Comparable>(of array: [T]) -> [T] {
    
    guard array.count > 0 else { return array }
    
    var resultArray = array
    var isSwapping = true
    let lastPosition = resultArray.count - 1
    
    while isSwapping {
        isSwapping = false
        for index in 0...lastPosition - 1 {
            if resultArray[index] > resultArray[index + 1] {
                let temp = resultArray[index + 1]
                resultArray[index + 1] = resultArray[index]
                resultArray[index] = temp
                isSwapping = true
            }
        }
    }
    return resultArray
}
