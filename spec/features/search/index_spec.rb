require 'rails_helper'

RSpec.describe 'Index' do
  context 'search returns all members from Fire Nation' do
    it 'returns members' do
      VCR.use_cassette('fire_nation') do
        visit '/'
        expect(current_path).to eq('/')


        select "Fire Nation", :from => :nation
        click_on "Search For Members"

        expect(page).to have_content("Chan (Fire Nation admiral)")
        expect(page).to have_content("Ozai")
        expect(page).to have_content("Earth Kingdom")

      end
    end
  end
end
