require 'rails_helper'

RSpec.describe 'Search Page' do
  before(:each) do
    visit root_path
    select "Fire Nation"
    click_on "Search For Members"
  end
  VCR.use_cassette('fire_nation') do
    it "should have a count of total number of people in selected nation" do
      expect(page).to have_content("Population: 100")
    end
  end
end
