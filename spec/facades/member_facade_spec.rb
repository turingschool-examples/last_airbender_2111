require 'rails_helper'

RSpec.describe 'Member Facade', type: :facade do

  it 'returns a count of members in a nation' do
    count = MemberFacade.get_count('fire+nation')
    expect(count).to eq(97)
  end

  it 'gets the first 25 members of a nation' do
    members = MemberFacade.get_first_25('fire+nation')

    expect(members.class).to be(Array)
    expect(members.count).to eq(25)
    expect(members[0].class).to be(MemberObject)
    expect(members[0].name).to eq('Chan (Fire Nation admiral)')
  end
end
