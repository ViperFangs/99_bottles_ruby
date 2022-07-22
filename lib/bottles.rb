# Bottles is an interface for 99 bottles song
class Bottles
  def verse(number)
    case number
    when 99
      '99 bottles of beer on the wall, ' +
      "99 bottles of beer.\n" +
      'Take one down and pass it around, ' +
      "98 bottles of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, " +
      "#{number} bottles of beer.\n" +
      'Take one down and pass it around, ' +
      "#{number - 1} bottles of beer on the wall.\n"
    end
  end
end
