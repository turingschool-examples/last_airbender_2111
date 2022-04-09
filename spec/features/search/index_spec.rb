require 'rails_helper'

RSpec.describe 'search by nation', type: :feature do

  it 'selects a nation from the homepage' do
    visit root_path

    select "Fire Nation", :from => "nation"
    click_on("Search For Members")

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Fire Nation")
  end

  it 'has the nation name and member count' do
    visit search_path(nation: "fire_nation")

    expect(page).to have_content('Fire Nation')
    expect(page).to have_content('97 members')
  end

  it 'has info for each member' do
    visit search_path(nation: "fire_nation")

    within("#bujing") do
      expect(page).to have_content('Bujing')
      expect(page).to have_content('Fire Nation military')
      expect(page).to have_content('Allies: Ozai')
      expect(page).to have_content('Enemies: Zuko')
    end
  end
end
