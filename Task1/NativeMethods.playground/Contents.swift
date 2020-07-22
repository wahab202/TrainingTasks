let numbers = [0,2,4,1,7,6,5,8]
print(find(array: numbers,number: 9))

func find(array:[Int], number: Int) -> Bool {
    return !(array.sorted().filter {$0 == number}).isEmpty
}
