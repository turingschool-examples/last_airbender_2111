require 'rails_helper'

RSpec.describe 'The Character Service' do
  it ".search_by_nation" do
    nations_chars = CharacterService.search_by_nation('Fire Nation')
    expect(nations_chars).to be_instance_of(Array)
    expect(nations_chars.first).to be_instance_of(Hash)
    expect(nations_chars.first[:_id]).to be_instance_of(String)
    expect(nations_chars.first[:allies]).to be_instance_of(Array)
    expect(nations_chars.first[:enemies]).to be_instance_of(Array)
    expect(nations_chars.first[:name]).to be_instance_of(String)
    expect(nations_chars.first[:affiliation]).to be_instance_of(String)
  end
end
