defmodule Practice do


    def main() do
      IO.puts ""

      name = IO.gets("What is your name? ") |> String.trim
      IO.puts ""
      IO.puts "Hello #{name}!"
      IO.puts ""

    end



    def pay() do
      main()
      IO.puts("Lets see how much you're making!")
      IO.puts ""

      hourlypay = IO.gets("What is your hourly pay in dollars? ")
      |> String.trim()
      |> String.replace("\n", "")
      |> String.to_integer()
      IO.puts ""

      hoursworked = IO.gets("How many hours have you worked? ")
      |> String.trim()
      |> String.replace("\n", "")
      |> String.to_integer()
      IO.puts ""

      grosspay = hourlypay * hoursworked

      IO.puts "Your Gross Pay is $#{grosspay}!"

      IO.puts ""

    end

end
