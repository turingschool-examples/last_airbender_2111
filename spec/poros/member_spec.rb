require 'rails_helper'
RSpec.describe Member do
  it 'builds a nation object when data is passed in' do
    data = {
      id: "1",
      name: "Fight Club",
      photo: "member_photo.jpeg",
      allies: ["friend"],
      enemies: ["enemy"],
      affiliations: "Navy",
    }
    @nation = Member.new(data)

    expect(@nation).to be_an_instance_of(Member)
    expect(@nation.id).to eq("550")
    expect(@nation.name).to eq("Fight Club")
    expect(@nation.summary).to eq("Description here")
    expect(@nation.allies).to eq(["friend"])
    expect(@nation.enemies).to eq(["enemy"])
    expect(@nation.affiliations).to eq("Navy")
  end
