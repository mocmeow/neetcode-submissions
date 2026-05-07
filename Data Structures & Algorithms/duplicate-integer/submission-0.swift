class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var tempDic : [Int:Int] = [:]
        for (index, value) in nums.enumerated() {
            var oldValue = tempDic.updateValue(index, forKey:value)
            if oldValue != nil {
                return true
            }
        }
        return false
    }
}
