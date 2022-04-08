require 'rails_helper' 

RSpec.describe 'Last Airbender Services' do 
    it 'will return an array of characters of a specific nation' do 
        characters = LastAirbenderService.character_affiliation('Fire Nation')
        expect(characters).to be_a Array 
        expect(characters.first).to be_a Hash
        expect(characters.first).to include(:allies, :enemies, :name, :affiliation)
    end
    it 'will return more than the default 25 characters' do 
        characters = LastAirbenderService.character_affiliation('Fire Nation')
        expect(characters.count).to be > 25
    end
end