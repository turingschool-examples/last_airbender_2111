require 'rails_helper'

RSpec.describe 'Landing Page' do
  describe 'select field' do
    it "should route to the search page when a field is selected and
    search for members is clicked on" do
      visit root_path
      #save_and_open_page
      select "Fire Nation"
      click_on "Search For Members"
      expect(current_path).to eq(search_path)
    end
  end
end
