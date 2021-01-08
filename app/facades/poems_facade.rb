class PoemsFacade
  def self.poems_for(author)
    poem_data = PoemsService.get_poems(author)

    poem_data.map do |data|
      poem = Poem.new(data)

      ToneService.get_tones(poem.poem).each do |tone|
        poem.add_tone(tone[:tone_name])
      end

      poem
    end
  end
end
