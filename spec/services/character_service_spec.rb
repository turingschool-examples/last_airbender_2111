require 'rails_helper'
RSpec.describe 'character service', :vcr do
  it 'gets a nation members based on params' do
    response = CharacterService.get_characters('fire_nation')
    response.each do |character|
      expect(character).to have_key(:_id)
      expect(character).to have_key(:allies)
      expect(character).to have_key(:enemies)
      expect(character).to have_key(:name)
      expect(character).to have_key(:affiliation)
    end
  end
end
