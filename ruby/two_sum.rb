# https://leetcode.com/problems/two-sum
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, i|
    if hash.has_key?(target - num)
      return [hash[target - num], i]
    end
    hash[num] = i
  end
end

# def two_sum(nums, target)
#   len = nums.length
#   if len == 2
#     return [0, 1]
#   end
#   for i in 0...len
#     for j in i+1...len
#       return [i, j] if nums[i] + nums[j] == target
#     end
#   end
