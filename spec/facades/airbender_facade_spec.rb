require 'rails_helper'
RSpec.describe AirbenderFacade do
  describe 'class methods' do
    it 'will return all members of a nation' do

      nation_members = AirbenderFacade.nation_members(nation)
        nation_members.each do |object|
        expect(object).to be_a Member
        expect(object.name).to_not be_nil
      end
    end
  end
end
