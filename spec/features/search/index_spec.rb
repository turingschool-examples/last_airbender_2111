require 'rails_helper'
RSpec.describe 'the search page' do
  it 'searches for total number of people per nation', :vcr do
    visit '/'
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'
    expect(current_path).to eq('/search')
    within '#nation_name' do
      expect(page).to have_content('Fire Nation')
    end
  end
end
