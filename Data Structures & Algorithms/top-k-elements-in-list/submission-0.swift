class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map: [Int: Int] = [:]
        var tupleArray: [(Int, Int)] = []
        

        // Count the numbers and store it in the map
        for i in nums.indices {
            map[nums[i], default: 0] += 1
        }

        for (key, value) in map{
            tupleArray.insert((key, value), at: 0)
        }

        let sortedTupleArray = tupleArray.sorted(by: {(element0, element1) -> Bool in 
            return element0.1 > element1.1
        })

        print(sortedTupleArray)
        // print(sortedTupleArray.prefix(2))
        // return []
        // return sortedTupleArray.prefix(k)

        var results: [Int] = []
        for i in 0..<k {
            results.insert(sortedTupleArray[i].0, at: 0)
        }
        return results
    
    }
}
