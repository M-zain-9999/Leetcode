class Solution {
    func largestMultipleOfThree(_ digits: [Int]) -> String {
        var arr1 = [Int]()
        var arr2 = [Int]()
        var arr3 = [Int]()
        var sum = 0
    for digit in digits 
 {
        sum += digit
    if digit % 3 == 0 
    {
        arr1.append(digit)
    }
    else if digit % 3 == 1 
    {
        arr2.append(digit)
    }
    else
    {
        arr3.append(digit)
    }
  }
  if sum % 3 == 1 
  {
    if arr2.count >= 1
    {
        arr2.sort(by: >)
        arr2 = arr2.dropLast()
    }
    else if arr3.count >= 1
    {
        arr3.sort(by: >)
        arr3 = arr3.dropLast(2)
    }
    else
    {
        return ""
    }
  }
  else if sum % 3 == 2
  {
    if arr3.count >= 1 
    {
        arr3.sort(by: >)
        arr3 = arr3.dropLast()
    }
    else if arr2.count >= 1
    {
        arr2.sort(by: >)
        arr2 = arr2.dropLast(2)
    }
    else
    {
        return ""
    }
  }
  arr1 += arr2 + arr3
  if arr1.count == 0 
  {
    return ""
  } 
  arr1.sort(by: >)
  if arr1[0] == 0 
  {
    return "0"
  }
  return arr1.map { String($0) }.joined(separator: "")
}
}