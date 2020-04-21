class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def scramble(scrambler)
    @contents = scrambler.scramble(@contents)
  end

  def unscramble(scrambler)
    @contents = scrambler.unscramble(@contents)
  end
end

class Reverser
  def scramble(contents)
    contents = contents.reverse
  end

  def unscramble(contents)
    contents = contents.reverse
  end
end

class Advancer

  def initialize(steps = 1)
    @steps = steps
  end

  def scramble(contents)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @steps).chr
    end
    contents = scrambled_chars.join
  end

  def unscramble(contents)
    scrambled_chars = contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - @steps).chr
    end
    contents = plain_chars.join
  end
end
