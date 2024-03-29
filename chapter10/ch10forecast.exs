%{
  "Monday" => 28,
  "Tuesday" => 29,
  "Wednesday" => 29,
  "Thursday" => 24,
  "Friday" => 16,
  "Saturday" => 16,
  "Sunday" => 20
}
|> Enum.map(
     fn ({day, temp_celsius}) -> {
                                  day,
                                  temp_celsius * 1.8 + 32
                                }
     end
   )
|> Enum.into(%{})
|> IO.inspect