require 'rails_helper'

RSpec.describe 'the landing page' do
  it 'can search by nation' do
    visit '/'
    select "Fire Nation", :from => :nation
    click_on "Search For Members"
    expect(current_path).to eq("/search")
    expect(page).to have_content("Total population: 97")
    expect(page).to have_content("name: Chan")
    expect(page).to have_content("name: Bujin")
    within ".Bujing" do
      expect(page).to have_content('allies: ["Ozai"]')
      expect(page).to have_content('enemies: ["Zuko"]')
    end
  end
end
