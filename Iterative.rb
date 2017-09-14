# Time Complexity: O(n) - Every element is visited once
# Space Complexity: Constant - Extra space not used

def reverse_array(array)
    array.dup.tap do |a|
        (0..a.length / 2).each do |i|
            a[i], a[-i - 1] = a[-i - 1], a[i]
        end
    end
end

# Time Complexity: O(n) - Every element is visited once
# Space Complexity: Constant - No additional storage is used

def palindrome(string)
    (0...string.length / 2).all? { |i| string[i] == string[-i - 1] }
end

# Time Complexity: O(n) - Iterated n times
# Space Complexity: Constant - No additional storage is used

def fibonacci(n)
    a = 0
    b = 1

    n.times do
        temp = a
        a = b
        b = temp + b
    end

    a
end

puts palindrome('madam')
puts palindrome('tofu')
puts fibonacci(7)
array = [1, 2, 3, 4, 5, 6]
print reverse_array(array)
