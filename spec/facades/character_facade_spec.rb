require 'rails_helper'
RSpec.describe CharacterFacade do
  it 'returns an array of characters', :vcr do
    characters = CharacterFacade.find_characters('fire_nation')
    expect(characters).to be_an(Array)
    characters.each do |c|
      expect(c).to be_a(Character)
    end
  end
end
