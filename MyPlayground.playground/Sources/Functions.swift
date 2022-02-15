import Foundation

public extension Collection {
    
    func myMap<T>(_ transform: (Element) throws -> T) rethrows -> [T] {
        var results: [T] = []
        
        for element in self {
            results.append(try transform(element))
        }
    
        return results
    }
    
    func myFilter(_ isIncluded: (Element) throws -> Bool) rethrows -> [Element] {
        var results: [Element] = []
        
        for element in self {
            if (try isIncluded(element)) {
                results.append(element)
            }
        }
    
        return results
    }
    
    func myReduce<T>(_ initialResult: T, _ nextPartialResult: (T, Element) throws -> T) rethrows -> T {
        
        var iterator = makeIterator()
        var result = initialResult
        
        while let nextElement = iterator.next() {
            result = try nextPartialResult(result, nextElement)
        }
    
        return result
    }
}
