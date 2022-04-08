require 'rails_helper'

RSpec.describe 'welcome index' do
  it 'can search for members from a nation' do
    visit root_path

    expect(page).to have_content('Search For Members')

    select "Fire Nation", from: 'nation'
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
  end

  it 'can display each member and their info' do
    visit search_path

    expect(page).to have_content("Members")
    within (first(".member-info")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".allies")
      expect(page).to have_css(".enemies")
      expect(page).to have_css(".affiliation")
    end
  end
end
