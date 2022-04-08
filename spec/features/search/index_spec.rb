require 'rails_helper'

RSpec.describe 'landing page' do
  it 'has a search button' do
    visit '/'
    expect(page).to have_button("Search For Members")
    click_button("Search For Members")
    expect(current_path).to eq("/search")
  end


end