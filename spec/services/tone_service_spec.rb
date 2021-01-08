require 'rails_helper'

RSpec.describe ToneService do
  describe "class methods" do
    it "#get_tones(poem)" do
      results = ToneService.get_tones("Team%2C%20I%20know%20that%20times%20are%20tough%21%20Product%20sales%20have%20been%20disappointing%20for%20the%20past%20three%20quarters.%20We%20have%20a%20competitive%20product%2C%20but%20we%20need%20to%20do%20a%20better%20job%20of%20selling%20it%21")

      expect(results).to be_a(Array)
      expect(results.count).to eq(2)

      expect(results.first).to be_a(Hash)

      expect(results.first).to have_key(:tone_name)
      expect(results.first[:tone_name]).to be_a(String)
    end
  end
end
