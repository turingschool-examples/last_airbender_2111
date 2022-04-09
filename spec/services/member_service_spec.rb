require 'rails_helper'

RSpec.describe 'Member Service', type: :service do

  it 'gets a count of all members in a nation' do
    fire_count = MemberService.member_count('fire+nation')
    expect(fire_count).to eq(97)
  end

  it 'gets data for the first 25 members of a nation' do
    members = MemberService.first_25('fire+nation')

    expect(members.count).to eq(25)
    first_member = members[0]
    expect(first_member[:_id]).to eq("5cf5679a915ecad153ab68fd")
    expect(first_member[:allies]).to eq(["Ozai"])
    expect(first_member[:enemies]).to eq(["Earth Kingdom"])
    expect(first_member[:name]).to eq("Chan (Fire Nation admiral)")
    expect(first_member[:affiliation]).to eq("Fire Nation Navy")
  end
end
