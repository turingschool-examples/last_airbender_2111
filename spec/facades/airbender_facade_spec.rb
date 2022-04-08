require 'rails_helper'

RSpec.describe AirbenderFacade do
  it 'returns data on members of fire nation' do
    fire_nation_members = AirbenderFacade.members_by_nation("fire+nation")

    expect(fire_nation_members.count).to eq(97)
    expect(fire_nation_members).to be_an(Array)
  end

  it 'creates member poros' do

    fire_nation_members = AirbenderFacade.members_by_nation("fire+nation")

    fire_nation_members.each do |member|
      expect(member).to be_a(Member)
    end
  end
end
