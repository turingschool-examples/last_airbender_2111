require 'rails_helper'

RSpec.describe Character do 
  it 'exists with attributes' do 
    data = {
      :_id => 1,
      :allies => ["aang", "Korra"],
      :enemies => ["derp", "flerp"],
      :name => "Zuko",
      :affiliation => "Fire Nation"
    }

    character = Character.new(data)

    expect(character).to be_an(Character)
    expect(character.id).to eq(1)
    expect(character.affiliation).to eq("Fire Nation")
    expect(character.enemies).to eq(["derp", "flerp"])
    expect(character.allies).to eq(["aang", "Korra"])
    expect(character.name).to eq("Zuko")
  end 
end 