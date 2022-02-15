import Foundation

// Best, Average, Worst Time Complexity: O(nlogn)

public func mergeSort<T: Comparable>(of array: [T]) -> [T] {
    
    guard array.count > 1 else { return array }
    
    let leftSide = Array(array[0..<array.count/2])
    let rightSide = Array(array[array.count/2..<array.count])
    
    return merge(left: mergeSort(of: leftSide), right: mergeSort(of: rightSide))
}

private func merge<T: Comparable>(left: [T], right: [T]) -> [T] {
    
    var resultArray: [T] = []
    var leftSide = left
    var rightSide = right
    
    while leftSide.count > 0 && rightSide.count > 0 {
        if leftSide.first! < rightSide.first! {
            resultArray.append(leftSide.removeFirst() )
        } else {
            resultArray.append(rightSide.removeFirst())
        }
    }
    resultArray += leftSide + rightSide
    return resultArray
}
