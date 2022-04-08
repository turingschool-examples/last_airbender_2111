require 'rails_helper'

RSpec.describe 'Airbender Service' do
  describe 'class methods' do

    it '.characters_with_a_specific_affiliation', :vcr do
      affiliation = AirbenderService.characters_with_a_specific_affiliation("Fire")

      expect(affiliation).to be_a(Array)

      affiliation.each do |data|
        expect(data[:_id]).to be_a(String)
        expect(data[:allies]).to be_a(Array)
        expect(data[:enemies]).to be_a(Array)
        expect(data[:name]).to be_a(String)
        expect(data[:affiliation]).to be_a(String)
        # expect(data[:photoUrl]).to be_a(String)
      end
    end
  end
end
