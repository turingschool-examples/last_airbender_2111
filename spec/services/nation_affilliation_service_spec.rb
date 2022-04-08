require 'rails_helper'

RSpec.describe 'The last airbender Nation Affiliation Service' do 
  context 'Class methods' do 
    it '.get_fire_nation' do 
      VCR.use_cassette('get_fire_nation') do 
        fn_characters = NationAffiliationService.get_fire_nation
        binding.pry
        expect(fn_characters).to be_an(Array)
      end
    end 

  end 
end