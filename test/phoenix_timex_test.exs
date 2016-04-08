defmodule PhoenixTimexTest do
  use ExUnit.Case
  use Timex

  doctest PhoenixTimex

  test "DateTime" do
    datetime = DateTime.from({{2016,2,29}, {12, 30, 30, 120}}, "Europe/Brussels")
    assert Phoenix.HTML.Safe.to_iodata(datetime) == "2016-02-29 12:30:30"
  end

  test "Date" do
    date = %Date{year: 2016, month: 2, day: 29}
    assert Phoenix.HTML.Safe.to_iodata(date) == "2016-02-29"
  end
end
