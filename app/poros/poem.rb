class Poem
  attr_reader :title, :author, :tones

  def initialize(data)
    @title = data[:title]
    @author = data[:author]
    @lines = data[:lines]
    @tones = []
  end

  def poem
    @lines.join(" ")
  end

  def add_tone(tone)
    @tones << tone
  end
end
