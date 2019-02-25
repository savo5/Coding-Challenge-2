# Anagrams are two words with exactly the same letters. Order does not matter. Define a method that, given two strings, returns a boolean indicating whether they are anagrams.
def anagrams?(str1, str2)
  str1.chars.sort == str2.chars.sort

end

# An isogram is a word of only non-repeating letters. Define a method that, given two isograms of the same length, returns an array of two elements indicating matches: the first number is the number of letters matched in both words at the same position, and the second is the number of letters matched in both words but not in the same position.

def isogram_matcher(isogram1, isogram2)
  #number of letters matched @ same position
  #iterate through the string, if element in isogram1 == element in isogram 2, increase letter match
  #number of leters matched
  #chars isogram1 and iterate through array
  #if element in isogram1 is in isogram2, increase count
  # return letters matched at same position and numbers matched in array

  idx_match = 0
  letter_match = 0

  isogram1.chars.each_with_index do |letter, idx|
    if letter == isogram2[idx]
      idx_match += 1
    elsif isogram2.include?(letter)
      letter_match += 1
    end
  end

  [idx_match, letter_match]

end

# You have a panoramic view in front of you, but you only can take a picture of two landmarks at a time (your camera is small). You want to capture every pair of landmarks that are next to each other. Define a method that, given an array of landmarks, returns an array of every adjacent pair from left to right. Assume the panorama wraps around.
def panoramic_pairs(landmarks)
  #make a new array for pairs of landmarks
  #starting with first landmakr, iterate through array and add two landmakrs to pair of landmarks

  pairs_of_landmarks = []

  idx = 0
  while idx < landmarks.length
    next_landmark = landmarks[idx + 1] || landmarks[0]
    pairs_of_landmarks << [landmarks[idx], next_landmark]
    idx += 1
  end

  pairs_of_landmarks
end

# Xbonacci

# Define a Xbonacci method that works similarly to the fibonacci sequence.
# The fibonacci sequence takes the previous two numbers in the sequence and adds
# them together to create the next number.
#
# First five fibonacci numbers = [1, 1, 2, 3, 5]
# The fourth fibonacci number (3) is the sum of the two numbers before it
# (1 and 2).
#
# In Xbonacci, the sum of the previous X numbers (instead of the previous 2 numbers)
# of the sequence becomes the next number in the sequence.
#
# The method will take two arguments: the starting sequence with X number of
# elements and an integer N. The method will return the first N elements in the given
# sequence.
#
# xbonacci([1, 1], 5) => [1, 1, 2, 3, 5]
# xbonacci([1, 1, 1, 1], 8) => [1, 1, 1, 1, 4, 7, 13, 25]
#
# X is the length of the starting sequence.
#
# number_of_xbonacci_numbers_to_return is the same as N.

def xbonacci(starting_sequence, number_of_xbonacci_numbers_to_return)
  # create a loop that will run until N is reached
  # loop should take the length of the starting sequence
  # multiple the length by -1
  # add elements from end of array to the length * -1

  num_elements_to_sum = starting_sequence.length * - 1

  while starting_sequence.length != number_of_xbonacci_numbers_to_return
    starting_sequence << starting_sequence[num_elements_to_sum..-1].reduce(:+)
  end

  starting_sequence


end
