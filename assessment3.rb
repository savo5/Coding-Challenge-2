# Define a method that accepts two arguments, a string and an integer. The method should return a copy of the string with the nth letter removed.
def remove_nth_letter(string, n)
  # letter to be removed is n + 1
  # call delete! method of string at strings letter to be removed index
  string[0...n] + string[(n + 1)..-1]
end

# Define a method that chunks an array into a nested array of sub-arrays of length n. The last array may be of length less than n if the original array's size does not divide evenly by n.
# chunk([1,2,3,4,5], 2) => [[1,2], [3,4], [5]]
def chunk(array, n)
  # starting with idx 0 iterate through array and get range of n elements

   chunk = []
  results = []

  array.each do |element|
    if chunk.length == n
      results << chunk
      chunk = []
    end
    chunk << element
  end

  results << chunk



end

# Define a method that multiplies the frequencies of the periods, commas, hyphens, semicolons, question marks, and exclamation points in a given string and returns the product. If any punctuation does not occur, don't include it in the product, i.e., don't multiply by zero!
def product_punctuation(str)
  #create a has with periods, commas, hyphens, semicolons, question marks, and exclamation points
  #select the pairs that have a value creater than 0
  #take the values and multiply them together

  punctuation_only = str.chars.select {|letter| ".,-;?!".include?(letter) }

  frequencies = Hash.new(0)

  punctuation_only.each do |el|
    frequencies[el] += 1
  end

  frequencies.values.reduce(:*)

end

# Translate a sentence into pig-latin! The first consonants go to the end of the word, then add "ay".
def pig_latin(sentence)
  #split the sentence
  #make an array of vowels
  # if word starts with vowel, add "ay" to end of word
  # if word does not start with a vowel, move consonants to end of word until word[0] is a vowel
  pig_latin_sentence =""

  words = sentence.split(" ")
  vowels = "aeiou"

  words.each do |word|
    until vowels.include?(word[0])
      word = word[1..-1] + word[0]
    end

    pig_latin_sentence << word + "ay "
  end

  pig_latin_sentence

end
