person = %{"gender" => "Female", "age" => "30ish", "name" => "Izzy"}
person["name"] |> IO.inspect()

Map.get(person, "name") |> IO.inspect()

izzy = %{"name" => "Izzy", "age" => "30ish", "gender" => "Female"}

Map.put(izzy, "country", "'straya") |> IO.inspect() #inspect has no effect on pipe
|> Map.put("age", "40ish") |> IO.inspect()

izzy |> IO.inspect() # immutability so original izzy is untouched

new_and_better_izzy = Map.merge(izzy, %{
  "body" => "living tissue over metal endoskeleton",
  "gender" => "T 800"
})

new_and_better_izzy |> IO.inspect()

newer_izzy = %{ new_and_better_izzy | "body" => "liquid alloy", "gender" => "T 1000"} #can't add, only modify

newer_izzy |> IO.inspect()

Map.delete(newer_izzy, "body") |> IO.inspect()
IO.puts("...terminated")