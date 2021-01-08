class Poem
  attr_reader :title, :author

  def initialize(data)
    @title = data[:title]
    @author = data[:author]
    @lines = data[:lines]
  end

  def poem
    @lines.join(" ")
  end

  def tone
    
  end
end
