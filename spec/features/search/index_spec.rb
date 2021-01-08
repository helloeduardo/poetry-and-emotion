require 'rails_helper'

RSpec.describe "Search Index Page" do
  it "I see a list of the first 10 poems after filling out the welcome page form" do
    visit '/'

    fill_in :author, with: "Emily"

    click_on "Get Poems"

    expect(current_path).to eq("/search")
    expect(page).to have_css('.poem', count: 10)

    within(first('.poem')) do
        expect(page).to have_content("Title: Not at Home to Callers")
        expect(page).to have_content("Author: Emily Dickinson")
        expect(page).to have_content("Poem: Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --")

        expect(page).to have_css('.tone', count: 1)
        within(first('.tone')) do
          expect(page).to have_content('Joy')
        end
      end
  end
end
