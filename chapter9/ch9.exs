IO.puts List.first([1, 2, 3, 4])

animals_and_the_like = ["dog", "cow", "duck", "moose"]
IO.puts animals_and_the_like
IO.puts Enum.reverse(animals_and_the_like)

IO.puts "\n"

cities = ["vienna", "melbourne", "osaka", "calgary", "sydney"]
Enum.each(cities, &IO.puts/1)

IO.puts Enum.map(cities, &String.capitalize/1)
IO.puts "\n"

IO.puts Enum.map(cities, &String.capitalize/1)

numbers = [1, 2, 3, 4]

IO.puts "puts dont work here"
IO.puts Enum.map(numbers, fn (number) -> number * 2 end)

scores = [74, 79, 89, 32, 79, 70, 32, 69, 76, 73, 88, 73, 82, 31]

Enum.reduce(scores, fn (score, sum) ->
  IO.puts("score is #{score} and sum is #{sum}}}")
  sum + score
end)

#ex1
words = ["a", "very", "fine", "collection", "of", "words", "enunciated"]

words_mapped = Enum.map(words, fn word -> String.replace(word, "e", "X" ) end)
Enum.each(words_mapped, &IO.puts/1)

#ex2
nums = [5, 12, 9, 24, 9, 18]
Enum.reduce(nums, fn (number, product) ->
  IO.puts("product #{product}")
  product * number
end)