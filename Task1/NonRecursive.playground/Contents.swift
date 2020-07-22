let numbers = [0,2,1,4,7,6,8,5]
print(find(array: numbers,number: 5))

func find(array:[Int], number: Int) -> Bool {
    print(sortArray(array: array))
    return findNumberInArray(array: array, number: number)
}

func sortArray(array:[Int]) -> [Int] {
    var mutatedArray = array
    for _ in 0..<mutatedArray.count {
        for j in 0..<mutatedArray.count-1 {
            if mutatedArray[j]>mutatedArray[j+1] {
                let tmp = mutatedArray[j]
                mutatedArray[j] = mutatedArray[j+1]
                mutatedArray[j+1]=tmp
            }
        }
    }
    return mutatedArray
}

func findNumberInArray(array:[Int],number:Int) -> Bool {
    for i in array {
        if i == number {
            return true
        }
    }
    return false
}
