class BeerSong
  def verse(num)
    return "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n" if num == 0
    return "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n" if num == 1
    return "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n" if num == 2
    return "#{num} bottles of beer on the wall, #{num} bottles of beer.\nTake one down and pass it around, #{num-1} bottles of beer on the wall.\n"
  end

  def verses(start, finish)
    start.downto(finish) do |num|
      verse(num)
    end
  end

  def sing
    verses(99, 0)
  end
end


# 2 bottles of beer on the wall, 2 bottles of beer.
# Take one down and pass it around, 1 bottle of beer on the wall.

# 1 bottle of beer on the wall, 1 bottle of beer.
# Take it down and pass it around, no more bottles of beer on the wall.

# No more bottles of beer on the wall, no more bottles of beer.
# Go to the store and buy some more, 99 bottles of beer on the wall.
