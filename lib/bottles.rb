# frozen_string_literal: true

# Bottles has the API for verse and versus for the 99bottles song
class Bottles
  def verse(number)
    case number
    when 3
      "3 bottles of beer on the wall, 3 bottles of beer.
Take one down and pass it around, 2 bottles of beer on the wall.
"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
"
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{number - 1} bottles of beer on the wall.
"
    end
  end

  def verses(from, to)
    lyrics = ''
    from.downto(to) do |number|
      lyrics += verse(number)
      lyrics += "\n" unless number == to
    end

    lyrics
  end

  def song
    verses(99, 0)
  end
end
