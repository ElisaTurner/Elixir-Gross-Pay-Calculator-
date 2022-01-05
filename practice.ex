defmodule Practice do
  @moduledoc """
  Practice keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

    def main() do
      IO.puts ""

      name = IO.gets("What is your name? ") |> String.trim
      IO.puts ""
      IO.puts "Hello #{name}!"
      IO.puts ""

    end

    def say_hello("") do
      IO.puts "You need to provide a name!"
      main()
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
