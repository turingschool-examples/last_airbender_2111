require 'rails_helper'

RSpec.describe 'search service' do
  it 'can find members by nation' do
    members = SearchService.find_members_by_nation("Fire Nation")

    members.each do |member|
      expect(member).to be_a(Hash)
      expect(member).to have_key(:name)
      expect(member[:name]).to be_a(String)

      expect(member).to have_key(:allies)
      expect(member[:allies]).to be_an(Array)

      expect(member).to have_key(:enemies)
      expect(member[:enemies]).to be_an(Array)

      expect(member).to have_key(:affiliation)
      expect(member[:affiliation]).to be_a(String)
    end
  end

  it 'can get a characters avatar' do
    pics = SearchService.find_avatar

    expect(pics).to be_an(Array)
  end

  xit 'can count members' do
    members = SearchService.count_members(25, 1)

    expect(members).to be_an(Array)
  end
end
