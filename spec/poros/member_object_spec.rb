require 'rails_helper'

RSpec.describe 'Member Object', type: :PORO do

  it 'creates an object for a member in the JSON response' do
    members = MemberService.first_25('fire+nation')
    member = members[2]

    object = MemberObject.new(member)

    expect(object).to be_instance_of(MemberObject)
    expect(object.affiliation).to eq("Fire Nation military")
    expect(object.allies).to eq("Ozai")
    expect(object.enemies).to eq("Zuko")
    expect(object.name).to eq("Bujing")
    expect(object.photourl).to eq("https://vignette.wikia.nocookie.net/avatar/images/7/76/Bujing.png/revision/latest?cb=20130714152817")
  end

  it 'has a nil value for missing photourls' do
    members = MemberService.first_25('fire+nation')
    member = members[0]

    object = MemberObject.new(member)

    expect(object.photourl).to be nil
  end

  it "says 'None' for members with no allies or enemies" do
    members = MemberService.first_25('fire+nation')
    member = members[21]

    object = MemberObject.new(member)

    expect(object.enemies).to eq('None')
  end
end
