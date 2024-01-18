

@people = []
@people << {first_name: "Jack", last_name: "Bauer", age:20}
@people << {first_name: "Kate", last_name: "Bauer", age:20}
@people << {first_name: "Ralph", last_name: "Bauer", age:2}

@people.each do |person|
  puts "Hi #{person[:first_name]} #{person[:last_name]}! You are #{person[:age]}"
end

  
# Exercise 2

# Use a hash to store the following information about 3 people: their first name, last name, and age. Then, loop through your hash and print out the following message for each person:

# Hi first_name last_name! You are age years old today.

  # Define a hash to store information about people
  people_info = {
    person1: { first_name: "John", last_name: "Doe", age: 25 },
    person2: { first_name: "Jane", last_name: "Smith", age: 30 },
    person3: { first_name: "Bob", last_name: "Johnson", age: 22 }
  }

  # Loop through the hash and print personalized messages
  people_info.each do |key, person|
    puts "Hi #{person[:first_name]} #{person[:last_name]}! You are #{person[:age]} years old today."
  end

# Exercise 3

# For every character in the sentence "Hello world", print out each letter on a separate line.
sentence = "Hello world"

sentence.each_char do |char|
  puts char
end
# Exercise 4

# For every number between 1 and 100, print out "Fizz" if the number is divisible by 3, "Buzz" if the number is divisible by 5, and "FizzBuzz" if the number is divisible by both 3 and 5. Otherwise, print out the number.
(1..100).each do |number|
  if (number % 3).zero? && (number % 5).zero?
    puts "FizzBuzz"
  elsif (number % 3).zero?
    puts "Fizz"
  elsif (number % 5).zero?
    puts "Buzz"
  else
    puts number
  end
end
# Exercise 5

# Create a method called sum that takes an array of numbers as an argument and returns the sum of the numbers. Use the sum method to find the sum of the numbers in the following array:
def sum(numbers)
  total = 0
  numbers.each { |num| total += num }
  total
end

# Example Usage:
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Call the sum method with the array of numbers
result = sum(numbers)

# Print the result

# numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "The sum of the numbers is: #{result}"
# Exercise 6

# Create a method called average that takes an array of numbers as an argument and returns the average of the numbers. Use the average method to find the average of the numbers in the following array:
def average(numbers)
  sum = numbers.sum.to_f
  count = numbers.length

  # Return average only if the array is not empty to avoid division by zero
  count.zero? ? nil : sum / count
end

# Example Usage:
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Call the average method with the array of numbers
result = average(numbers)

# Print the result
if result.nil?
  puts "Cannot calculate average for an empty array."
else
  puts "The average of the numbers is: #{result}"
end
# numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# Exercise 7

def length_finder(strings)
  lengths = strings.map { |str| str.length }
end

# Example Usage:
words = ["hello", "what", "is", "up", "dude"]

# Call the length_finder method with the array of strings
result = length_finder(words)

# Print the result
puts "Lengths of the strings in the array: #{result}"
# Lengths of the strings in the array: [5, 4, 2, 2, 4]

# Exercise 8

# Create a method called reverse that takes a string as an argument and returns the reverse of that string. Use the reverse method to reverse the string "hello world".
def reverse_string(input_string)
  reversed_string = input_string.reverse
end

# Example Usage:
original_string = "hello world"

# Call the reverse_string method with the string
result = reverse_string(original_string)

# Print the result
puts "Original String: #{original_string}"
puts "Reversed String: #{result}"
# Exercise 9

# Create a method called find_longest_word that takes an array of words and returns the length of the longest one. Use the find_longest_word method to find the length of the longest word in the following array:

# words = ["hello", "what", "is", "up", "dude"]
def find_longest_word(words)
  longest_length = words.max_by { |word| word.length }.length
end

# Example Usage:
words = ["hello", "what", "is", "up", "dude"]

# Call the find_longest_word method with the array of words
result = find_longest_word(words)

# Print the result
puts "Length of the longest word: #{result}"

# Exercise 10

# Create a method called high that takes a hash of symbols and numbers as an argument and finds the key with the largest value. Use the high method to find the key with the largest value in the following hash:

def high(scores)
  highest_key = scores.max_by { |key, value| value }.first
end

# Example Usage:
high_scores = {
  :bronze => 10,
  :silver => 20,
  :gold => 30
}

# Call the high method with the hash of scores
result = high(high_scores)

# Print the result
puts "Key with the highest value: #{result}"
# Exercise 11

# A hash is nested within another hash. Write code that will return the value 30.

# hash = {
#   :a => {
#     :b => 30
#   },
#   :c => {
#     :d => 40
#   },
#   :e => {
#     :f => {
#       :g => 50
#     }
#   }
# }
hash = {
  :a => {
    :b => 30
  },
  :c => {
    :d => 40
  },
  :e => {
    :f => {
      :g => 50
    }
  }
}

value_30 = hash[:a][:b]

puts "The value 30 is: #{value_30}"
# Exercise 12

# Create a method called double that takes an array of numbers as an argument and returns a new array with each number doubled. Use the double method to double the numbers in the following array:

# numbers = [1, 2, 3, 4, 5]
# Exercise 13

# Create a method called multiply that takes two numbers as arguments and returns the product of the two numbers. Use the multiply method to find the product of the following numbers:

# a = 5

# b = 6
# Double method
def double(numbers)
  doubled_numbers = numbers.map { |num| num * 2 }
end

# Example Usage for double method:
numbers = [1, 2, 3, 4, 5]
doubled_result = double(numbers)
puts "Doubled numbers: #{doubled_result}"

# Multiply method
def multiply(a, b)
  product = a * b
end

# Example Usage for multiply method:
a = 5
b = 6
product_result = multiply(a, b)
puts "Product of #{a} and #{b}: #{product_result}"
# Exercise 14

# Create a method called divisible_by_three that takes an array of numbers and returns a new array containing only those numbers that are divisible by three. Use the divisible_by_three method to find the numbers that are divisible by three in the following array:

# numbers = [9, 3, 1, 8, 6, 15, 12]
def divisible_by_three(numbers)
  divisible_numbers = numbers.select { |num| (num % 3).zero? }
end

# Example Usage:
numbers = [9, 3, 1, 8, 6, 15, 12]
result = divisible_by_three(numbers)

puts "Numbers divisible by three: #{result}"
# Exercise 15

# Create a method called join_arrays that takes two arrays as arguments and returns one array with all of the items from the argument arrays. Use the join_arrays method on the following arrays:

# a = [1, 2, 3]

# b = [4, 5, 6]

def join_arrays(array1, array2)
  joined_array = array1 + array2
end

# Example Usage:
a = [1, 2, 3]
b = [4, 5, 6]

result = join_arrays(a, b)

puts "Joined array: #{result}"