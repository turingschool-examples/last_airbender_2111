require 'rails_helper'

RSpec.describe 'Airbender Service' do
  describe 'class methods' do

    it 'can get list of members via type nation', :vcr do
      members = AirbenderService.nation_members('Fire Nation')
      expect(members).to be_an(Array)

      members.each do |member|
        expect(member).to have_key(:name)
        expect(member).to have_key(:allies)
        expect(member).to have_key(:enemies)
        expect(member).to have_key(:affiliation)
      end
    end
  end
end
