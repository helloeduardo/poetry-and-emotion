require 'rails_helper'

RSpec.describe "Search Index Page" do
  it "I see a list of the first 10 poems after filling out the welcome page form" do
    visit '/'

    fill_in :author, with: "Emily"

    click_on "Get Poems"

    expect(current_path).to eq("/search")
    expect(page).to have_css('.poem', count: 10)

    within(first('.poem')) do
        expect(page).to have_content("Title: xxxxx")
        expect(page).to have_content("Author: xxxxx")
        expect(page).to have_content("Poem: xxxxx")
        expect(page).to have_content("Tone: xxxxx")
      end
  end
end
