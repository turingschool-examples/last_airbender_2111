require 'rails_helper'
RSpec.describe 'LastAirbenderService' do
  it 'returns all characters' do
    all_characters = LastAirbenderService.all_nation_characters('Fire Nation')
    expect(all_characters).to be_an Array
  end
end