# Given an array of words, remove all the occurrences of the letter 'a' in those words and return the resulting array.
def remove_letter_a(words)
  #iterate through elements in array
  #if word includes letter "a" delete! letter "a"
  #return array

  words.each do |word|
    if word.include?("a")
      word.delete!("a")
    end
  end

  words
end

# An abundant number is less than the sum of its divisors, not including itself. 12's divisors are 1, 2, 3, 4, 6, which sum to 16. xw16 > 12 so 12 is an abundant number.
# Write a method that, given a number, returns a boolean indicating whether that number is abundant.
def abundant?(num)

  factors = []
  (1...num).each do |int|
    if num % int == 0
      factors << int
    end
  end

  sum_of_factors = factors.reduce(:+)

  if sum_of_factors > num
    return true
  end

  false

end



# Return the greatest number that's a factor of both inputs.
# greatest_common_factor(6, 10) => 2
# greatest_common_factor(10, 15) => 5
def greatest_common_factor(first_number, second_number)
  first_number_factors = factors(first_number)
  second_number_factors = factors(second_number)

  first_number_factors.reverse.each do |factor|
    if second_number_factors.include?(factor)
      return factor
    end
  end

end

def factors(number)
  factors = []
  (1...number).each do |int|
    if number % int == 0
      factors << int
    end
  end

  factors

end

# Write a method that, given a sentence without punctuation or capitalization, returns the word with the greatest number of repeated letters. Return the first word if there's a tie. It doesn't matter how often individual letters repeat, just that they repeat.
# word_with_most_repeats("I took the road less traveled and that has made all the difference") => "difference" because "difference" has two repeated letters, more than the other words.

def word_with_most_repeats(sentence)
  words = sentence.split

  hash = {}

  words.each do |word|
    hash[word] = count_repeats(word)
  end

  max = hash.values.max

  ties = hash.select {|k, v| v == max }.first.first




end


def count_repeats(word)
  counts = Hash.new(0)

  word.chars do |letter|
    counts[letter] += 1
  end

  counts.count {|k,v| v > 1 }

end
