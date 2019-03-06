# Define a method that returns a boolean indicating whether its second argument is a substring of its first.
def substring?(long_string, short_string)
  long_string.include?(short_string)
end

# Write a method that, given a string, returns a hash in which each key is a character in the string and each value is an array of the first and last indices where that character occurs. If the character occurs only once, the array should contain a single index. Consider defining helper methods.
# first_last_indices("banana") => {"b" => [0], "a" => [1, 5], "n" => [2, 4]}
def first_occurence(str, c)
  str.index(c)
end

def last_occurence(str, c)
  str.chars.reverse.index(c) * -1
end

def first_last_indices(str)
  all_occurences = Hash.new(0)

  str.chars do |letter|
    all_occurences[letter] = [first_occurence(str, letter), last_occurence(str, letter)]
  end

  all_occurences
end

# Define a method that returns the number of times that two adjacent numbers in an array sum to n. Don't reuse numbers.
# count_adjacent_sums([1, 5, 1, 3, 3], 6) => 2
def count_adjacent_sums(array, n)



end
