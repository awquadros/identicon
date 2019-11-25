defmodule IdenticonTest do
  use ExUnit.Case
  doctest Identicon

  test "greets the world" do
    assert Identicon.hello() == :world
  end

  test "pick color from the first three elements of a given list" do
    image_with_color = Identicon.pick_color(%Identicon.Image{hex: [12,45,78,98,65,32]})
    assert image_with_color.color == {12,45,78}
  end

  test "mirror a row of three elements" do
    assert Identicon.mirror_row([123,456,789]) == [123,456,789,456,123]
  end
end
