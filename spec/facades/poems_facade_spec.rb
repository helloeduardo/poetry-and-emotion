require 'rails_helper'

describe PoemsFacade do
  it 'returns poems for an author' do
    poems = PoemsFacade.poems_for("Emily")

    expect(poems).to be_an(Array)
    expect(poems.size).to eq(10)
    expect(poems.first).to be_an_instance_of(Poem)
  end
end
