File.read("haiku.txt")
|> IO.inspect()

{:ok, contents} = File.read("haiku.txt")
fixed_contents = contents
                 |> String.split("\n", trim: true)
                 |> Enum.map(&String.reverse/1)
                 |> Enum.join("\n")

fixed_contents
|> IO.inspect()


stream = File.stream!("haiku.txt")

fixed_streamed_conents = stream
                         |> Enum.map(&String.trim/1)
                         |> IO.inspect()
                         |> Enum.map(&String.reverse/1)
                         |> IO.inspect()
                         |> Enum.join("\n")

IO.inspect(fixed_contents)

File.write("fixed_haiku.txt", fixed_streamed_conents)

File.read("fixed_haiku.txt") |> IO.inspect()

File.rm("asdasd")