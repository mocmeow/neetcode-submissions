class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int:Int] = [:]

        for index in nums.indices{
            let number = nums[index]
            map[number, default:0] = index
        }

        for index in nums.indices {
            let number = nums[index]
            let need = target - number

            if let otherIdx = map[need], otherIdx != index {
                return [index, otherIdx].sorted()
            }
        }
        return []
    }
}