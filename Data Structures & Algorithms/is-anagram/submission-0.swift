class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var string1Dic: [Character:Int] = [:]
        var string2Dic: [Character:Int] = [:]

        for index in s.indices {
            var char1 = s[index]
            var updateValue1 = string1Dic[char1] != nil ? (string1Dic[char1] ?? 0) + 1 : 1
            string1Dic.updateValue(updateValue1, forKey: char1)

            var char2 = t[index]
            var updateValue2 = string2Dic[char2] != nil ? (string2Dic[char2] ?? 0) + 1 : 1
            string2Dic.updateValue(updateValue2, forKey: char2)
        }

        for (k,v) in string1Dic {
            if string1Dic[k] != string2Dic[k]{
                return false
            }
        }
        return true
    }
}
