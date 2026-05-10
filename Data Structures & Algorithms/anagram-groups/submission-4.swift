class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        if s == t {
            return true
        }

        var string1Dic: [Character:Int] = [:]
        var string2Dic: [Character:Int] = [:]

        for index in s.indices {
            string1Dic[s[index], default: 0] += 1
            string2Dic[t[index], default: 0] += 1
        }

        for (k,_) in string1Dic {
            if string1Dic[k] != string2Dic[k]{
                return false
            }
        }
        return true
    }

    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result: [[String]] = []

        for i in 0..<strs.count {
            let flatResult = result.flatMap{ element in
                element
            }
            if flatResult.contains(strs[i]) {
                continue
            }

            var currentAnagrams: [String] = []
            for j in 0..<strs.count{
                if (isAnagram(strs[i], strs[j])) {
                    currentAnagrams.insert(strs[j], at: 0)
                }
            }
            result.insert(currentAnagrams, at: 0)
        }
        return result
    }

    // func groupAnagrams(_ strs: [String], _ currentResult: [[String]] = []) -> [[String]] {
    //     var result: [[String]] = currentResult
    //     var words: [String] = strs
    //     var currentAnagrams: [String] = []
    //     let remainWordsCount: Int = strs.count

    //     for i in 0..<remainWordsCount {
    //         if (isAnagram(strs[0], strs[i])) {
    //             currentAnagrams.insert(strs[i], at: 0)
    //         }
    //     }

    //     result.insert(currentAnagrams, at: 0)

    //     if (currentAnagrams.count > 0) {
    //         for anagram in currentAnagrams {
    //             words.removeAll(where: {word in 
    //                 word == anagram
    //             })
    //         }   
    //     } else {
    //         words.remove(at: 0)
    //     }
        
    //     if (words.count > 0){
    //         return groupAnagrams(words, result)   
    //     }
    //     return result
    // }
}
