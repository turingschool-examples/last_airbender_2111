require 'rails_helper'

RSpec.describe LastAirbenderFacade do
  it '.nation_members' do
    
    members = LastAirbenderFacade.nation_members

    expect(members).to be_an Array
    members.each do |member|
      expect(member).to be_a LastAirbender
    end
  end
end
