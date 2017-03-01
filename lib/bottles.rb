class Bottles

  def verse(number)
    case
    when number > 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} bottles of beer on the wall."
    when number == 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} bottle of beer on the wall."
    when number == 1
      "#{number} bottle of beer on the wall, #{number} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall."
    when number == 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
    end
  end

  def verses(high_number, low_number)
    print "#{verse(high_number)}\n\n"
    loop do
      number = high_number-=1
      print "#{verse(number)}\n\n"
      break if high_number == low_number
    end
  end

end
