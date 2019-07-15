class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for i, num in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, i]
            } else {
                dict[num] = i
            }
        }
        fatalError("No valid output!")
    }
}
