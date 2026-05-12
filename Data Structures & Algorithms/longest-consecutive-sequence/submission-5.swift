class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        let sorted = nums.sorted(by:{$0<$1})
        print(sorted)
        var resultMap: [Int: Int] = [sorted[0]:1]
        var startOfCurrentSequence = sorted[0]
       
        for i in 0..<sorted.count {
            if(i == sorted.count - 1){
                break
            }

            if(sorted[i] + 1 == sorted[i+1]){
                resultMap[startOfCurrentSequence, default: 1 ] += 1
            }else if(sorted[i] == sorted[i+1]){
                continue
            }else if(sorted[i+1] - sorted[i] >= 2 ) {
                resultMap[sorted[i+1], default: 1 ] = 1
                startOfCurrentSequence = sorted[i+1]
                continue
            }
            else {
                continue
            }
        }
        let sortedFromMap = resultMap.sorted{$0.value < $1.value}
        let result = sortedFromMap.last ?? (key:0,value:0)
        return result.value
    }
}
