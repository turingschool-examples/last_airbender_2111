require 'rails_helper'

RSpec.describe 'The search results index page' do 
  it 'displays affiliated characters from API endpoint' do

    VCR.use_cassette('fire_nation_search') do 
      visit root_path
      save_and_open_page
      click_button 'Air Nomads'
      click_button 'Fire Nation'
    end 
  end 

end 