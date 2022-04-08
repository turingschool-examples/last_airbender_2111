require 'rails_helper'

RSpec.describe 'The Character Facade' do
  it ".find_by_nation" do
    nations_chars = CharacterFacade.new.find_by_nation("Fire Nation")
    expect(nations_chars).to be_instance_of(Array)
    expect(nations_chars.first).to be_instance_of(Character)
    expect(nations_chars.length).to eq(25)
  end

  it ".total_by_nation" do
    nations_total_chars = CharacterFacade.new.total_by_nation("Fire Nation")
    expect(nations_total_chars).to be_instance_of(Integer)
    expect(nations_total_chars).to eq(97)
  end
end
