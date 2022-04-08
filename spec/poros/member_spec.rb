require 'rails_helper'
RSpec.describe Member do
  it 'builds a nation object when data is passed in' do
    data = {
      id: "1",
      name: "ang",
      photoUrl: "member_photo.jpeg",
      allies: ["friend"],
      enemies: ["enemy"],
      affiliations: "Navy",
    }
    @member = Member.new(data)

    expect(@member).to be_an_instance_of(Member)
    expect(@member.id).to eq("1")
    expect(@member.name).to eq("ang")
    expect(@member.photo).to eq("member_photo.jpeg")
    expect(@member.allies).to eq(["friend"])
    expect(@member.enemies).to eq(["enemy"])
    expect(@member.affiliations).to eq("Navy")
  end
end
