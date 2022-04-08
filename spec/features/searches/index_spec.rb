require 'rails_helper'
RSpec.describe 'Airbender Member Search Index page' do
  context 'viewer searches for members' do
    it 'will return a view page with all the members in the nation' do
      fire_nation_members = AirbenderFacade.nation_members("Fire Nation")

      visit root_path
      select "Fire Nation"
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)

      expect(page).to have_content("fire_nation")
      expect(page).to have_content(fire_nation_members.count)

      end
    end
  end
