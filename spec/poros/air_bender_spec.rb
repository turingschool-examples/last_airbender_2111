require 'rails_helper'

RSpec.describe Airbender do
  let!(:attributes) { {name: "Batman",
                       allies: ["Robin","Nightwing"],
                       enemies: ["Penguin","Joker"],
                       affiliation: "Gotham City",
                       photoUrl: ""
                       } }
  let!(:airbender) { Airbender.new(attributes) }

  it 'exists' do
    expect(airbender).to be_a(Airbender)
  end

  it 'has attributes' do
    expect(airbender.name).to eq("Batman")
    expect(airbender.allies).to eq(["Robin","Nightwing"])
    expect(airbender.enemies).to eq(["Penguin","Joker"])
    expect(airbender.affiliation).to eq("Gotham City")
    expect(airbender.photoUrl).to eq("Not Listed")
  end
end
