require 'rails_helper'

RSpec.describe 'The last airbender Nation Affiliation Service' do 
  context 'Class methods' do 
    it '.get_affiliated_characters' do 
      VCR.use_cassette('get_fire_nation') do 
        fn_characters = NationAffiliationService.get_affiliated_characters("fire nation")
        
        expect(fn_characters).to be_an(Array)
        expect(fn_characters.count).to eq(97)
        expect(fn_characters.first).to be_an(Hash)
        expect(fn_characters.first[:_id]).to be_an(String)
        expect(fn_characters.first[:allies]).to be_an(Array)
        expect(fn_characters.first[:allies].first).to be_an(String)
        expect(fn_characters.first[:enemies]).to be_an(Array)
        expect(fn_characters.first[:enemies].first).to be_an(String)
        expect(fn_characters.first[:name]).to be_an(String)
        expect(fn_characters.first[:affiliation]).to be_an(String)
      end
    end 
    it '.get_character_details' do 
      VCR.use_cassette('get_character_details') do 
        one_character = NationAffiliationService.get_character_details("5cf5679a915ecad153ab68cc")
        expect(one_character).to be_an(Hash)
        expect(one_character[:allies]).to be_an(Array)
        expect(one_character[:enemies]).to be_an(Array)
        expect(one_character[:_id]).to be_an(String)
        expect(one_character[:photoUrl]).to be_an(String)
        expect(one_character[:name]).to be_an(String)
        expect(one_character[:gender]).to be_an(String)
        expect(one_character[:hair]).to be_an(String)
        expect(one_character[:weapon]).to be_an(String)
        expect(one_character[:profession]).to be_an(String)
        expect(one_character[:affiliation]).to be_an(String)
        expect(one_character[:first]).to be_an(String)

      end
    end 

  end 
end