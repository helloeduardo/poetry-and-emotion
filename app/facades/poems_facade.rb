class PoemsFacade
  def self.poems_for(author)
    poem_data = PoemsService.get_poems(author)

    poem_data.map do |data|
      Poem.new(data)
    end
  end
end
