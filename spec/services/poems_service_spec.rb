require 'rails_helper'

RSpec.describe PoemsService, :vcr do
  describe "class methods" do
    it "#get_poems(author)" do
      results = PoemsService.get_poems("Emily")

      expect(results).to be_a(Array)
      expect(results.count).to eq(10)

      expect(results.first).to be_a(Hash)

      expect(results.first).to have_key(:title)
      expect(results.first[:title]).to be_a(String)

      expect(results.first).to have_key(:author)
      expect(results.first[:author]).to be_a(String)

      expect(results.first).to have_key(:lines)
      expect(results.first[:lines]).to be_an(Array)
    end
  end
end
