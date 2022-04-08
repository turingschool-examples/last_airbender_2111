require 'rails_helper'

RSpec.describe AirbenderFacade do

  it 'creates member poros for selected nation', :vcr do
    members = AirbenderFacade.nation_members('Fire Nation')

    expect(members).to be_an(Array)
    
    members.each do |member|
      expect(member).to be_an_instance_of(Member)
    end
  end
end
