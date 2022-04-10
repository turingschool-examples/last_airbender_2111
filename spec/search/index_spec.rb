require 'rails_helper'

RSpec.describe 'Search Index Page' do
  it 'searches for total number of people per nation' do
    visit '/'
    select "Fire Nation", from: :nation
    click_button "Search For Members"
    expect(current_path).to eq("/search")
    expect(page).to have_content("Total Characters")
    save_and_open_page
  end
end