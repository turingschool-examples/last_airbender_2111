require 'rails_helper'

RSpec.describe 'The last airbender Nation Affiliation Service' do 
  context 'Class methods' do 
    it '.get_fire_nation' do 
      VCR.use_cassette('get_fire_nation') do 
        fn_characters = NationAffiliationService.get_affiliated_characters("fire nation")
        binding.pry
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

  end 
end