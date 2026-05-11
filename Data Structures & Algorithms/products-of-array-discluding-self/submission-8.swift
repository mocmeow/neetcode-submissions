class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var resultMap: [Int:Int] = [:]
        var inputMap: [Int:Int] = [:]

        for i in 0..<nums.count {
            inputMap[i, default:0] = nums[i]
        }
        for i in 0..<nums.count {
            let multiply = inputMap.reduce(1){ partial, element in
                if(element.key == i){
                    return partial
                } else {
                    return partial * element.value
                }
            }
            resultMap[i, default: 0] = multiply
        }

        var sorted = Array(resultMap).sorted{$0.key < $1.key}
        var sortedValues = sorted.map{ element in
            return element.value
        }
        return sortedValues
    }
}
