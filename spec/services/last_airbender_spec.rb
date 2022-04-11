require  'rails_helper'

RSpec.describe 'LastAirbenderService' do
  it 'returns all characters' do
    all_chars = LastAirbenderService.all_nation_characters('Fire Nation')
  end
end