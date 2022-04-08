require 'rails_helper'
require './app/poros/character'

RSpec.describe 'Character PORO' do
    it 'holds information appropriately' do
        data = {

            name: "soup",
            affiliation: "e",
            allies: ["quiche"],
            enemies: ["broccoli"],
            photoUrl: "soup.com"

        }

        test = CharacterPoro.new(data)

        expect(test.name).to eq(data[:name])
        expect(test.affiliation).to eq(data[:affiliation])
        expect(test.allies).to eq(data[:allies])
        expect(test.enemies).to eq(data[:enemies])
        expect(test.photo_url).to eq(data[:photoUrl])
    end 
end 