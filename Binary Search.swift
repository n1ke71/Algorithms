//704. Binary Search
//Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.
//You must write an algorithm with O(log n) runtime complexity.

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
           let middle = left + (right - left) / 2
            if nums[middle] == target {
                return middle
            }
            if nums[middle] > target {
                right = middle - 1
            } else {
                left = middle + 1
            }
        }
        return -1
    }
}

let test = Solution().search([-1,0,3,5,9,12], 9)