person = %{name: "Izzy", age: "30ish", gender: "Female"}

Enum.each(
  person,
  fn ({key, value}) ->
    IO.puts "key is #{key}"
    IO.puts "value is #{value}"
  end
)

celsius_map = %{
  "Monday" => 28,
  "Tuesday" => 29,
  "Wednesday" => 29,
  "Thursday" => 24,
  "Friday" => 16,
  "Saturday" => 16,
  "Sunday" => 20
}

fahrenheit_list = Enum.map(celsius_map, fn ({key, value}) -> {key, value * 1.8 + 32}  end)

Enum.each(
  fahrenheit_list,
  fn ({key, value}) ->
    IO.puts("#{key} => #{value}")
  end
)

fahrenheit_map = Enum.into(fahrenheit_list, &{})

