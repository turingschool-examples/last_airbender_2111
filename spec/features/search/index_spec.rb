require 'rails_helper'
RSpec.describe 'the search page' do
  it 'returns the name of the nation searched for', :vcr do
    visit '/'
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'
    expect(current_path).to eq('/search')
    within '#nation_name' do
      expect(page).to have_content('Fire Nation')
    end
  end

  it 'returns all members of the fire nation ', :vcr do
    visit '/'
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'
    expect(current_path).to eq('/search')
    expect(page).to have_content('Member count: 97')
  end

  it 'returns members details', :vcr do
    visit '/'
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'
    expect(current_path).to eq('/search')
    within '#details' do
      expect(page).to have_content('Allies:')
      expect(page).to have_content('Enemies:')
      expect(page).to have_content('Affiliations:')
    end
  end
end
