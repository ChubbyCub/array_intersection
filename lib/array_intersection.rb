# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n)
# Space complexity: O(n)
require "set"

def intersection(array1, array2)
  set = Set.new
  res = Array.new

  if array1.nil? || array2.nil?
    return res
  end

  for i in 0...array1.length
    set << array1[i]
  end

  for i in 0...array2.length
    if set.include?(array2[i])
      res << array2[i]
    end
  end

  return res
end
