require 'rails_helper'
RSpec.describe Character do
  it 'is initialized with a hash of data' do
    result = { _id: '5cf5679a915ecad153ab68fd',
               allies: ['Ozai'],
               enemies: ['Earth Kingdom'],
               name: 'Chan (Fire Nation admiral)',
               affiliation: 'Fire Nation Navy' }
    character = Character.new(result)
    expect(character.id).to eq(result[:_id])
    expect(character.allies).to eq(result[:allies])
    expect(character.enemies).to eq(result[:enemies])
    expect(character.name).to eq(result[:name])
    expect(character.affiliation).to eq(result[:affiliation])
  end
end
