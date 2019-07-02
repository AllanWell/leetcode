class Solution {
    func reverse(_ x: Int) -> Int {
        var x = x
        var result = 0
        while x != 0 {
            if result > Int32.max / 10 || result < Int32.min / 10 {
                return 0
            }
            result = result * 10 + x % 10
            x = x / 10
        }
        return result
    }
}