func houseRobberRecursive(inputArray : [Int])->Int{
  func stealFromHouse(index : Int)->Int{
    if index >= inputArray.count {
      return 0
    } else {
      return max(stealFromHouse(index: index + 2) + inputArray[index], stealFromHouse(index: index + 1 ))
    }
    
  }
  return stealFromHouse(index: 0)
}

houseRobberRecursive(inputArray: [3,1,2,5,4,2])
