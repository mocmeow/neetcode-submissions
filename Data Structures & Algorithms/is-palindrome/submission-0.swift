class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var cleanedBackspaces = s.filter{ char in
        let keep = char != " " && (char.isLetter || char.isNumber)
            return keep
        }
        print(cleanedBackspaces)

        var reversed = String(cleanedBackspaces.reversed())
        print(reversed.lowercased())
        print(cleanedBackspaces.lowercased())
        return reversed.lowercased() == cleanedBackspaces.lowercased()
    }
}
