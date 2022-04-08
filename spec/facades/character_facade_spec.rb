require 'rails_helper'

RSpec.describe 'The Character Facade' do 
  context 'Class Methods' do 
    it '.affiliated_characters' do 
      VCR.use_cassette('affiliated_characters') do 
        fire_nation_characters = CharacterFacade.affiliated_characters("fire nation")

        expect(fire_nation_characters).to be_an(Array)
        expect(fire_nation_characters.first).to be_an(Character)
      end 
    end

  end 

end 