require "rails_helper"

describe Poem do
  attrs = {
    title: "Not at Home to Callers",
    author: "Emily Dickinson",
    lines: [
      "Not at Home to Callers",
      "Says the Naked Tree --",
      "Bonnet due in April --",
      "Wishing you Good Day --"
    ],
    linecount: "4"
  }

  poem = Poem.new(attrs)

  it "exists and has attributes" do
    expect(poem).to be_a Poem
    expect(poem.title).to eq("Not at Home to Callers")
    expect(poem.author).to eq("Emily Dickinson")
    expect(poem.poem).to eq("Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --")
  end

  it "can add a tone" do
    tone = 'Joy'

    expect(poem.tones).to eq([])

    poem.add_tone(tone)

    expect(poem.tones).to eq(["Joy"])
  end
end
