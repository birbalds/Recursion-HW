# Time Complexity: O(n) - Every element is visited once
# Space Complexity: Constant - Only minor variables were used

def reverse_array(array)
    right = array.length - 1
    left = 0
    reverse_helper(array, left, right)
    print array
end

# Time Complexity: O(n) - Every element is visited once
# Space Complexity: Constant - No additional storage is used

def palindrome(string)
    (string.length <= 1) || ((string[0, 1] == string[-1, 1]) && palindrome(string[1..-2]))
end

# Time Complexity: O(n) - Iterated n times
# Space Complexity: Constant - No additional storage is used

def fibonacci(n)
    n <= 1 ? n : fibonacci(n - 1) + fibonacci(n - 2)
end

private

def reverse_helper(array, left, right)
    return if left >= right

    temp = array[left]
    array[left] = array[right]
    array[right] = temp
    reverse_helper(array, left + 1, right - 1)
end

puts palindrome('madam')
puts palindrome('tofu')
puts fibonacci(7)
array = [1, 2, 3, 4, 5, 6]
print reverse_array(array)
