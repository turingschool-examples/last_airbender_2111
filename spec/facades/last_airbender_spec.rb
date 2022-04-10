require 'rails_helper'

RSpec.describe 'LastAirbenderFacade' do
  it '.all_nation_characters' do
    characters = LastAirbenderFacade.all_nation_characters('Fire Nation')

    expect(characters).to be_an Array
    expect(characters.count).to eq(97)
  
  end
end