require 'rails_helper'

RSpec.describe 'Character poro' do 
  it 'exists' do
    data = {allies: ["Turing"], enemies: ["Flat Irons"], name: 'Michael', affiliation: ['Back End'], photoUrl: 'stringurl'}
    character = Character.new(data)
    expect(character).to be_a Character
    expect(character.name).to eq("Michael")
    expect(character.allies).to eq(["Turing"])
    expect(character.enemies).to eq(["Flat Irons"])
    expect(character.affiliation).to eq(['Back End'])
    expect(character.photo_url).to eq('stringurl')
  end
end