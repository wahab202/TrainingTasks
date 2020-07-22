let numbers = [0,2,1,4,7,6,8,5]
print(find(array: numbers,number: 9))

func find(array:[Int], number: Int) -> Bool {
    print(sortArray(array: array, count: array.count))
    return findNumberInArray(array: array, number: number)
}

func sortArray(array:[Int],count:Int) -> [Int] {
    var mutatedArray = array
    if count == 0 {
        return mutatedArray
    } else {
        for i in 0..<count-1 {
            if mutatedArray[i]>mutatedArray[i+1] {
                let tmp = mutatedArray[i]
                mutatedArray[i] = mutatedArray[i+1]
                mutatedArray[i+1]=tmp
            }
        }
        return sortArray(array: mutatedArray, count: count-1)
    }
}

func findNumberInArray(array:[Int],number:Int) -> Bool {
    for i in array {
        if i == number {
            return true
        }
    }
    return false
}
