class Solution {

    // use semicolon (";") as words separator
    // use comma (",") as charaters separator
    let blank: String = "*blank*"
    func encode(_ strs: [String]) -> String {
        var temp: [String] = []
        let blankRemovedStrs: [String] = strs.map{
            if $0 == "" {
                return blank
            } else {
                return $0
            }
        }
        
        for i in 0..<strs.count {
            // each word -> bytes
            let bytes = [UInt8](blankRemovedStrs[i].data(using: .utf8)!)

            // [1,2,3] -> ["1","2","3"], should use map
            var wordInByte: [String] = []
            for byte in bytes{
                wordInByte.append(String(byte))
            }
            temp.append(wordInByte.joined(separator: ","))
        }
        return temp.joined(separator: ";")
    }

    func decode(_ str: String) -> [String] {
        var result: [String] = []
        // Split words, return array of words
        let words = str.split(separator: ";").map{ String($0) }
        
        for i in 0..<words.count {
            // Split bytes and transform to sequences of bytes, corresponding to each word
            let chars = words[i].split(separator: ",").compactMap{UInt8($0)}
            let originalWord = String(data: Data(chars), encoding: .utf8)!
            
            if originalWord == blank {
                result.append("")
            } else {
                result.append(originalWord)
            }
        }
        return result
    }
}
