require 'rails_helper'

RSpec.describe 'search index page' do 
    it 'will show all the desired attributes' do 
        visit search_path(nation: "fire_nation")
        expect(page).to have_content("Fire Nation")
        expect(page).to have_content('There are 97 members in this tribe!')
        expect(page).to have_content('Name: Chan (Fire Nation admiral)')
        expect(page).to have_content('Affiliation: Fire Nation Navy')
        expect(page).to have_content('Allies: Ozai')
        expect(page).to have_content('Enemies: Earth Kingdom')
    end
end